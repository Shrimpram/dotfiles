require('orgmode').setup{
  org_agenda_files = '~/Sync/org/*',
  org_default_notes_file = '~/Sync/org/inbox.org',
  org_deadline_warning_days = 2,
  org_agenda_skip_scheduled_if_done = true,
  org_agenda_skip_deadline_if_done = true,
  org_use_tag_inheritance = true,
}
