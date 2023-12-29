require "qg/rr/engine"
module Qg
  module Rr
    NAME = 'Reconciled Return'
    GROUP = 'rr'
    MENU_ITEMS = [:reconciled_return]
    MODELS = ['RrUnapprovedRecord','IncomingFile','IncomingFileRecord','RrIncomingFile','RrIncomingRecord','ReconciledReturn']
    COMMON_MENU_ITEMS = [:incoming_file]
    TEST_MENU_ITEMS = []
  end
end
