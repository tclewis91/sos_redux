class EmergencyCallsController < ApplicationController
  before_action :set_emergency_call, only: [:show, :edit, :update, :destroy]

  # GET /emergency_calls
  # GET /emergency_calls.json
  def index
    @emergency_calls = EmergencyCall.all
  end

  # GET /emergency_calls/1
  # GET /emergency_calls/1.json
  def show
  end
end
