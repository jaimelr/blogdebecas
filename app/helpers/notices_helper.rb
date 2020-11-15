module NoticesHelper
  def notice_status
    @notice.active ? 'Activo' : 'Inactivo'
  end
end
