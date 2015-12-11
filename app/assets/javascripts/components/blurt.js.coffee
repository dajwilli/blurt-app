@Blurt = React.createClass
  getInitialState: ->
    blurt: @props
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/blurts/#{ @props.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteBlurt @props

  render: ->
    <div className="event" >
      <div className="content">
        <div className="summary left floated">
          <a className="user right floated">
            Anonymous:
          </a> {@state.blurt.message}
        </div>
      </div>
      <i className="remove icon right floated delete blurt" onClick={@handleDelete}></i>
    </div>