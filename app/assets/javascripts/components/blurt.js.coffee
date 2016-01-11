IntlMixin       = ReactIntl.IntlMixin;
FormattedRelative = ReactIntl.FormattedRelative;

@Blurt = React.createClass
  mixins: [IntlMixin]

  getInitialState: ->
    blurt: @props.blurt
  handleDelete: (e) ->
    e.preventDefault()
    $.ajax
      method: 'DELETE'
      url: "/blurts/#{ @props.blurt.id }"
      dataType: 'JSON'
      success: () =>
        @props.handleDeleteBlurt @props.blurt
  addLike: ->
    @forceUpdate <Like {...@props.blurt} source={"/blurts/#{@props.blurt.id}/likes"} handleLike={@addLike}/>

  render: ->
    <div className="event" >
      <div className="content">
        <div className="summary left floated">
          <a className="user right floated">
            Anonymous:
          </a> {@state.blurt.message}
          <div className="date"><FormattedRelative value={@props.blurt.created_at}/></div>
        </div>
        <div className="meta">
          <Like {...@props.blurt} source={"/blurts/#{@props.blurt.id}/likes"}/>
        </div>
      </div>
      <i className="remove icon right floated delete blurt" onClick={@handleDelete}></i>
    </div>