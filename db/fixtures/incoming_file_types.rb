ScService.seed_once(:code) do |s|
  s.code = 'RR'
  s.name = 'reconciled returns'
  s.approval_status = 'A'
  s.created_by = 'Q'
end

IncomingFileType.seed(:sc_service_id, :code) do |s|
  s.sc_service_id = ScService.find_by(code: 'RR').id
  s.code = 'RR'
  s.name = 'RR'
  s.msg_domain = 'DFDL'
  s.msg_model = '{http://www.quantiguous.com/services/file}:reconciledReturns'
  s.skip_first = 'Y'
  s.auto_upload = 'N'
  s.validate_all = 'Y'
  s.build_response_file = 'N'
  s.db_unit_name = "pk_qg_rr_file_manager"
  s.records_table = 'rr_incoming_records'
  s.can_override = 'N'
  s.can_skip = 'Y'
  s.can_retry = 'N'
  s.build_nack_file = 'N'
  s.skip_last = 'N'
end