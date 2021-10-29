

RSpec.describe AppointmentsController, type: :controller do
  it { should route(:get, '/appointments').to(action: :index) }
  it { should route(:get, '/appointments/1').to(action: :show, id: 1) }
  it { should route(:get, '/appointments/1/edit').to(action: :edit, id: 1) }
  it { should route(:delete, '/appointments/1').to(action: :destroy, id: 1) }
  it { should route(:post, '/appointments').to(action: :create) } 
  it { should route(:patch, '/appointments/1').to(action: :update, id: 1) }

  it 'new appointment should be created' do
    trainer = Trainer.create(name: "Sebastian", expertise: "Pokemon training")
    client = Client.create(name: "Drew", membership: "Globogym")

    expect{ 
        post "create", 
        params: { 
            appointment: { 
                client_id: client.id, 
                trainer_id: trainer.id, 
                workout: "Make it burn", 
                date: "2021-10-30", 
                timeslot: "Early Morining: 6 to 8am" 
            } 
        }, session: { user_id: 1 }
    }.to change{ Appointment.count }.by(1)

    # appointment = Appointment.create(client_id:1, trainer_id:1, workout:"Make it burn", date: "2021-10-30", timeslot:"Early Morining: 6 to 8am")
  end

  it 'should redirect to trainer path on successful create' do
    trainer = Trainer.create(name: "Sebastian", expertise: "Pokemon training")
    client = Client.create(name: "Drew", membership: "Globogym")

    post "create", 
        params: { 
            appointment: { 
                client_id: client.id, 
                trainer_id: trainer.id, 
                workout: "Make it burn", 
                date: "2021-10-30", 
                timeslot: "Early Morining: 6 to 8am" 
            } 
        }, session: { user_id: 1 }

    expect(response).to redirect_to(trainer_path(trainer))
  end

  it 'should not create an appointment with empty params' do
    trainer = Trainer.create(name: "Sebastian", expertise: "Pokemon training")
    client = Client.create(name: "Drew", membership: "Globogym")

    expect{ 
        post "create", 
        params: { 
            appointment: { 
                client_id: client.id, 
                trainer_id: trainer.id, 
                workout: nil, 
                date: "2021-10-30", 
                timeslot: "Early Morining: 6 to 8am" 
            } 
        }, session: { user_id: 1 }
    }.to change{ Appointment.count }.by(0)
  end

  it 'should rerender new template on failed creation attempts' do
    trainer = Trainer.create(name: "Sebastian", expertise: "Pokemon training")
    client = Client.create(name: "Drew", membership: "Globogym")

    post "create", 
        params: { 
            appointment: { 
                client_id: client.id, 
                trainer_id: trainer.id, 
                workout: nil, 
                date: "2021-10-30", 
                timeslot: "Early Morining: 6 to 8am" 
            } 
        }, session: { user_id: 1 }

    expect(response).to render_template(:new)
    expect(flash[:success]).to eq "Appointment could not be created"
  end

#   describe "GET #index" do
#     subject { get :index }
#         #Makes a request to grab all currently generated appointments
#         #Then requests display's index in list on page
#       it "successfully displays the full index of created appointments" do
#         expect(Appointment.all).to render_template("/appointments")
#     end
#   end
end
