import { Application } from "@hotwired/stimulus"
import PasswordVisibility from 'stimulus-password-visibility'
import ToTop from "./viewport-entrance-toggle_controller"
const application = Application.start()
application.register('password-visibility', PasswordVisibility)
application.register("viewport-entrance-toggle", ToTop)
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
