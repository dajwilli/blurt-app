@BlurtForm = React.createClass
  getInitialState: ->
    message: ''

  handleChange: (e) ->
    name = e.target.name
    @setState "#{name}": e.target.value

  submit: (e) ->
    e.preventDefault()
    if @state.message
      $.post '', { blurt: @state }, (data) =>
        @props.handleNewBlurt data
        @setState @getInitialState()

  render: ->
    return <form className="ui reply form">
      <div className="field">
        <textarea type="text" value={@state.message} onChange={@handleChange} name="message" />
      </div>
      <div className="ui blue labeled submit icon button" id="post" onClick={this.submit}>
        <i className="icon edit"></i> Post Blurt
      </div>
    </form>