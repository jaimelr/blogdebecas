module ScholarshipsHelper
  def scholarship_status_text(scholarship)
    scholarship.status ? 'Activa': 'Finalizada'
  end
end
