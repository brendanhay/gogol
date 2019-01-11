{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Chat.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Chat.Types.Product where

import           Network.Google.Chat.Types.Sum
import           Network.Google.Prelude

-- | A card is a UI element that can contain UI widgets such as texts,
-- images.
--
-- /See:/ 'card' smart constructor.
data Card = Card'
    { _cCardActions :: !(Maybe [CardAction])
    , _cName        :: !(Maybe Text)
    , _cHeader      :: !(Maybe CardHeader)
    , _cSections    :: !(Maybe [Section])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Card' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cCardActions'
--
-- * 'cName'
--
-- * 'cHeader'
--
-- * 'cSections'
card
    :: Card
card =
    Card'
    { _cCardActions = Nothing
    , _cName = Nothing
    , _cHeader = Nothing
    , _cSections = Nothing
    }

-- | The actions of this card.
cCardActions :: Lens' Card [CardAction]
cCardActions
  = lens _cCardActions (\ s a -> s{_cCardActions = a})
      . _Default
      . _Coerce

-- | Name of the card.
cName :: Lens' Card (Maybe Text)
cName = lens _cName (\ s a -> s{_cName = a})

-- | The header of the card. A header usually contains a title and an image.
cHeader :: Lens' Card (Maybe CardHeader)
cHeader = lens _cHeader (\ s a -> s{_cHeader = a})

-- | Sections are separated by a line divider.
cSections :: Lens' Card [Section]
cSections
  = lens _cSections (\ s a -> s{_cSections = a}) .
      _Default
      . _Coerce

instance FromJSON Card where
        parseJSON
          = withObject "Card"
              (\ o ->
                 Card' <$>
                   (o .:? "cardActions" .!= mempty) <*> (o .:? "name")
                     <*> (o .:? "header")
                     <*> (o .:? "sections" .!= mempty))

instance ToJSON Card where
        toJSON Card'{..}
          = object
              (catMaybes
                 [("cardActions" .=) <$> _cCardActions,
                  ("name" .=) <$> _cName, ("header" .=) <$> _cHeader,
                  ("sections" .=) <$> _cSections])

-- | A room or DM in Hangouts Chat.
--
-- /See:/ 'space' smart constructor.
data Space = Space'
    { _sName        :: !(Maybe Text)
    , _sDisplayName :: !(Maybe Text)
    , _sType        :: !(Maybe SpaceType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Space' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sName'
--
-- * 'sDisplayName'
--
-- * 'sType'
space
    :: Space
space =
    Space'
    { _sName = Nothing
    , _sDisplayName = Nothing
    , _sType = Nothing
    }

-- | Resource name of the space, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehYs
sName :: Lens' Space (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Output only. The display name (only if the space is a room).
sDisplayName :: Lens' Space (Maybe Text)
sDisplayName
  = lens _sDisplayName (\ s a -> s{_sDisplayName = a})

-- | Output only. The type of a space.
sType :: Lens' Space (Maybe SpaceType)
sType = lens _sType (\ s a -> s{_sType = a})

instance FromJSON Space where
        parseJSON
          = withObject "Space"
              (\ o ->
                 Space' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "type"))

instance ToJSON Space where
        toJSON Space'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _sName,
                  ("displayName" .=) <$> _sDisplayName,
                  ("type" .=) <$> _sType])

-- | A UI element contains a key (label) and a value (content). And this
-- element may also contain some actions such as onclick button.
--
-- /See:/ 'keyValue' smart constructor.
data KeyValue = KeyValue'
    { _kvOnClick          :: !(Maybe OnClick)
    , _kvTopLabel         :: !(Maybe Text)
    , _kvIcon             :: !(Maybe KeyValueIcon)
    , _kvButton           :: !(Maybe Button)
    , _kvContent          :: !(Maybe Text)
    , _kvIconURL          :: !(Maybe Text)
    , _kvContentMultiline :: !(Maybe Bool)
    , _kvBottomLabel      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'KeyValue' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'kvOnClick'
--
-- * 'kvTopLabel'
--
-- * 'kvIcon'
--
-- * 'kvButton'
--
-- * 'kvContent'
--
-- * 'kvIconURL'
--
-- * 'kvContentMultiline'
--
-- * 'kvBottomLabel'
keyValue
    :: KeyValue
keyValue =
    KeyValue'
    { _kvOnClick = Nothing
    , _kvTopLabel = Nothing
    , _kvIcon = Nothing
    , _kvButton = Nothing
    , _kvContent = Nothing
    , _kvIconURL = Nothing
    , _kvContentMultiline = Nothing
    , _kvBottomLabel = Nothing
    }

-- | The onclick action. Only the top label, bottom label and content region
-- are clickable.
kvOnClick :: Lens' KeyValue (Maybe OnClick)
kvOnClick
  = lens _kvOnClick (\ s a -> s{_kvOnClick = a})

-- | The text of the top label. Formatted text supported.
kvTopLabel :: Lens' KeyValue (Maybe Text)
kvTopLabel
  = lens _kvTopLabel (\ s a -> s{_kvTopLabel = a})

-- | An enum value that will be replaced by the Chat API with the
-- corresponding icon image.
kvIcon :: Lens' KeyValue (Maybe KeyValueIcon)
kvIcon = lens _kvIcon (\ s a -> s{_kvIcon = a})

-- | A button that can be clicked to trigger an action.
kvButton :: Lens' KeyValue (Maybe Button)
kvButton = lens _kvButton (\ s a -> s{_kvButton = a})

-- | The text of the content. Formatted text supported and always required.
kvContent :: Lens' KeyValue (Maybe Text)
kvContent
  = lens _kvContent (\ s a -> s{_kvContent = a})

-- | The icon specified by a URL.
kvIconURL :: Lens' KeyValue (Maybe Text)
kvIconURL
  = lens _kvIconURL (\ s a -> s{_kvIconURL = a})

-- | If the content should be multiline.
kvContentMultiline :: Lens' KeyValue (Maybe Bool)
kvContentMultiline
  = lens _kvContentMultiline
      (\ s a -> s{_kvContentMultiline = a})

-- | The text of the bottom label. Formatted text supported.
kvBottomLabel :: Lens' KeyValue (Maybe Text)
kvBottomLabel
  = lens _kvBottomLabel
      (\ s a -> s{_kvBottomLabel = a})

instance FromJSON KeyValue where
        parseJSON
          = withObject "KeyValue"
              (\ o ->
                 KeyValue' <$>
                   (o .:? "onClick") <*> (o .:? "topLabel") <*>
                     (o .:? "icon")
                     <*> (o .:? "button")
                     <*> (o .:? "content")
                     <*> (o .:? "iconUrl")
                     <*> (o .:? "contentMultiline")
                     <*> (o .:? "bottomLabel"))

instance ToJSON KeyValue where
        toJSON KeyValue'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _kvOnClick,
                  ("topLabel" .=) <$> _kvTopLabel,
                  ("icon" .=) <$> _kvIcon, ("button" .=) <$> _kvButton,
                  ("content" .=) <$> _kvContent,
                  ("iconUrl" .=) <$> _kvIconURL,
                  ("contentMultiline" .=) <$> _kvContentMultiline,
                  ("bottomLabel" .=) <$> _kvBottomLabel])

-- | A widget is a UI element that presents texts, images, etc.
--
-- /See:/ 'widgetMarkup' smart constructor.
data WidgetMarkup = WidgetMarkup'
    { _wmKeyValue      :: !(Maybe KeyValue)
    , _wmImage         :: !(Maybe Image)
    , _wmButtons       :: !(Maybe [Button])
    , _wmTextParagraph :: !(Maybe TextParagraph)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'WidgetMarkup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'wmKeyValue'
--
-- * 'wmImage'
--
-- * 'wmButtons'
--
-- * 'wmTextParagraph'
widgetMarkup
    :: WidgetMarkup
widgetMarkup =
    WidgetMarkup'
    { _wmKeyValue = Nothing
    , _wmImage = Nothing
    , _wmButtons = Nothing
    , _wmTextParagraph = Nothing
    }

-- | Display a key value item in this widget.
wmKeyValue :: Lens' WidgetMarkup (Maybe KeyValue)
wmKeyValue
  = lens _wmKeyValue (\ s a -> s{_wmKeyValue = a})

-- | Display an image in this widget.
wmImage :: Lens' WidgetMarkup (Maybe Image)
wmImage = lens _wmImage (\ s a -> s{_wmImage = a})

-- | A list of buttons. Buttons is also oneof data and only one of these
-- fields should be set.
wmButtons :: Lens' WidgetMarkup [Button]
wmButtons
  = lens _wmButtons (\ s a -> s{_wmButtons = a}) .
      _Default
      . _Coerce

-- | Display a text paragraph in this widget.
wmTextParagraph :: Lens' WidgetMarkup (Maybe TextParagraph)
wmTextParagraph
  = lens _wmTextParagraph
      (\ s a -> s{_wmTextParagraph = a})

instance FromJSON WidgetMarkup where
        parseJSON
          = withObject "WidgetMarkup"
              (\ o ->
                 WidgetMarkup' <$>
                   (o .:? "keyValue") <*> (o .:? "image") <*>
                     (o .:? "buttons" .!= mempty)
                     <*> (o .:? "textParagraph"))

instance ToJSON WidgetMarkup where
        toJSON WidgetMarkup'{..}
          = object
              (catMaybes
                 [("keyValue" .=) <$> _wmKeyValue,
                  ("image" .=) <$> _wmImage,
                  ("buttons" .=) <$> _wmButtons,
                  ("textParagraph" .=) <$> _wmTextParagraph])

-- | An onclick action (e.g. open a link).
--
-- /See:/ 'onClick' smart constructor.
data OnClick = OnClick'
    { _ocAction   :: !(Maybe FormAction)
    , _ocOpenLink :: !(Maybe OpenLink)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OnClick' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocAction'
--
-- * 'ocOpenLink'
onClick
    :: OnClick
onClick =
    OnClick'
    { _ocAction = Nothing
    , _ocOpenLink = Nothing
    }

-- | A form action will be trigger by this onclick if specified.
ocAction :: Lens' OnClick (Maybe FormAction)
ocAction = lens _ocAction (\ s a -> s{_ocAction = a})

-- | This onclick triggers an open link action if specified.
ocOpenLink :: Lens' OnClick (Maybe OpenLink)
ocOpenLink
  = lens _ocOpenLink (\ s a -> s{_ocOpenLink = a})

instance FromJSON OnClick where
        parseJSON
          = withObject "OnClick"
              (\ o ->
                 OnClick' <$> (o .:? "action") <*> (o .:? "openLink"))

instance ToJSON OnClick where
        toJSON OnClick'{..}
          = object
              (catMaybes
                 [("action" .=) <$> _ocAction,
                  ("openLink" .=) <$> _ocOpenLink])

-- | Annotations associated with the plain-text body of the message. Example
-- plain-text message body: \`\`\` Hello \'FooBot how are you!\" \`\`\` The
-- corresponding annotations metadata: \`\`\` \"annotations\":[{
-- \"type\":\"USER_MENTION\", \"startIndex\":6, \"length\":7,
-- \"userMention\": { \"user\": {
-- \"name\":\"users\/107946847022116401880\", \"displayName\":\"FooBot\",
-- \"avatarUrl\":\"https:\/\/goo.gl\/aeDtrS\", \"type\":\"BOT\" },
-- \"type\":\"MENTION\" } }] \`\`\`
--
-- /See:/ 'annotation' smart constructor.
data Annotation = Annotation'
    { _aLength      :: !(Maybe (Textual Int32))
    , _aType        :: !(Maybe AnnotationType)
    , _aUserMention :: !(Maybe UserMentionMetadata)
    , _aStartIndex  :: !(Maybe (Textual Int32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aLength'
--
-- * 'aType'
--
-- * 'aUserMention'
--
-- * 'aStartIndex'
annotation
    :: Annotation
annotation =
    Annotation'
    { _aLength = Nothing
    , _aType = Nothing
    , _aUserMention = Nothing
    , _aStartIndex = Nothing
    }

-- | Length of the substring in the plain-text message body this annotation
-- corresponds to.
aLength :: Lens' Annotation (Maybe Int32)
aLength
  = lens _aLength (\ s a -> s{_aLength = a}) .
      mapping _Coerce

-- | The type of this annotation.
aType :: Lens' Annotation (Maybe AnnotationType)
aType = lens _aType (\ s a -> s{_aType = a})

-- | The metadata of user mention.
aUserMention :: Lens' Annotation (Maybe UserMentionMetadata)
aUserMention
  = lens _aUserMention (\ s a -> s{_aUserMention = a})

-- | Start index (0-based, inclusive) in the plain-text message body this
-- annotation corresponds to.
aStartIndex :: Lens' Annotation (Maybe Int32)
aStartIndex
  = lens _aStartIndex (\ s a -> s{_aStartIndex = a}) .
      mapping _Coerce

instance FromJSON Annotation where
        parseJSON
          = withObject "Annotation"
              (\ o ->
                 Annotation' <$>
                   (o .:? "length") <*> (o .:? "type") <*>
                     (o .:? "userMention")
                     <*> (o .:? "startIndex"))

instance ToJSON Annotation where
        toJSON Annotation'{..}
          = object
              (catMaybes
                 [("length" .=) <$> _aLength, ("type" .=) <$> _aType,
                  ("userMention" .=) <$> _aUserMention,
                  ("startIndex" .=) <$> _aStartIndex])

-- | An image that is specified by a URL and can have an onclick action.
--
-- /See:/ 'image' smart constructor.
data Image = Image'
    { _iOnClick     :: !(Maybe OnClick)
    , _iAspectRatio :: !(Maybe (Textual Double))
    , _iImageURL    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iOnClick'
--
-- * 'iAspectRatio'
--
-- * 'iImageURL'
image
    :: Image
image =
    Image'
    { _iOnClick = Nothing
    , _iAspectRatio = Nothing
    , _iImageURL = Nothing
    }

-- | The onclick action.
iOnClick :: Lens' Image (Maybe OnClick)
iOnClick = lens _iOnClick (\ s a -> s{_iOnClick = a})

-- | The aspect ratio of this image (width\/height).
iAspectRatio :: Lens' Image (Maybe Double)
iAspectRatio
  = lens _iAspectRatio (\ s a -> s{_iAspectRatio = a})
      . mapping _Coerce

-- | The URL of the image.
iImageURL :: Lens' Image (Maybe Text)
iImageURL
  = lens _iImageURL (\ s a -> s{_iImageURL = a})

instance FromJSON Image where
        parseJSON
          = withObject "Image"
              (\ o ->
                 Image' <$>
                   (o .:? "onClick") <*> (o .:? "aspectRatio") <*>
                     (o .:? "imageUrl"))

instance ToJSON Image where
        toJSON Image'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _iOnClick,
                  ("aspectRatio" .=) <$> _iAspectRatio,
                  ("imageUrl" .=) <$> _iImageURL])

-- | List of string parameters to supply when the action method is invoked.
-- For example, consider three snooze buttons: snooze now, snooze 1 day,
-- snooze next week. You might use action method = snooze(), passing the
-- snooze type and snooze time in the list of string parameters.
--
-- /See:/ 'actionParameter' smart constructor.
data ActionParameter = ActionParameter'
    { _apValue :: !(Maybe Text)
    , _apKey   :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActionParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apValue'
--
-- * 'apKey'
actionParameter
    :: ActionParameter
actionParameter =
    ActionParameter'
    { _apValue = Nothing
    , _apKey = Nothing
    }

-- | The value of the parameter.
apValue :: Lens' ActionParameter (Maybe Text)
apValue = lens _apValue (\ s a -> s{_apValue = a})

-- | The name of the parameter for the action script.
apKey :: Lens' ActionParameter (Maybe Text)
apKey = lens _apKey (\ s a -> s{_apKey = a})

instance FromJSON ActionParameter where
        parseJSON
          = withObject "ActionParameter"
              (\ o ->
                 ActionParameter' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON ActionParameter where
        toJSON ActionParameter'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _apValue, ("key" .=) <$> _apKey])

-- | Represents a membership relation in Hangouts Chat.
--
-- /See:/ 'membership' smart constructor.
data Membership = Membership'
    { _mState      :: !(Maybe MembershipState)
    , _mName       :: !(Maybe Text)
    , _mMember     :: !(Maybe User)
    , _mCreateTime :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Membership' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mState'
--
-- * 'mName'
--
-- * 'mMember'
--
-- * 'mCreateTime'
membership
    :: Membership
membership =
    Membership'
    { _mState = Nothing
    , _mName = Nothing
    , _mMember = Nothing
    , _mCreateTime = Nothing
    }

-- | State of the membership.
mState :: Lens' Membership (Maybe MembershipState)
mState = lens _mState (\ s a -> s{_mState = a})

-- | Resource name of the membership, in the form \"spaces\/*\/members\/*\".
-- Example: spaces\/AAAAMpdlehY\/members\/105115627578887013105
mName :: Lens' Membership (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | Member details.
mMember :: Lens' Membership (Maybe User)
mMember = lens _mMember (\ s a -> s{_mMember = a})

-- | The creation time of the membership a.k.a the time at which the member
-- joined the space, if applicable.
mCreateTime :: Lens' Membership (Maybe UTCTime)
mCreateTime
  = lens _mCreateTime (\ s a -> s{_mCreateTime = a}) .
      mapping _DateTime

instance FromJSON Membership where
        parseJSON
          = withObject "Membership"
              (\ o ->
                 Membership' <$>
                   (o .:? "state") <*> (o .:? "name") <*>
                     (o .:? "member")
                     <*> (o .:? "createTime"))

instance ToJSON Membership where
        toJSON Membership'{..}
          = object
              (catMaybes
                 [("state" .=) <$> _mState, ("name" .=) <$> _mName,
                  ("member" .=) <$> _mMember,
                  ("createTime" .=) <$> _mCreateTime])

-- | A generic empty message that you can re-use to avoid defining duplicated
-- empty messages in your APIs. A typical example is to use it as the
-- request or the response type of an API method. For instance: service Foo
-- { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); } The
-- JSON representation for \`Empty\` is empty JSON object \`{}\`.
--
-- /See:/ 'empty' smart constructor.
data Empty =
    Empty'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'

instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Hangouts Chat events.
--
-- /See:/ 'deprecatedEvent' smart constructor.
data DeprecatedEvent = DeprecatedEvent'
    { _deSpace                     :: !(Maybe Space)
    , _deToken                     :: !(Maybe Text)
    , _deAction                    :: !(Maybe FormAction)
    , _deEventTime                 :: !(Maybe DateTime')
    , _deUser                      :: !(Maybe User)
    , _deConfigCompleteRedirectURL :: !(Maybe Text)
    , _deType                      :: !(Maybe DeprecatedEventType)
    , _deMessage                   :: !(Maybe Message)
    , _deThreadKey                 :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DeprecatedEvent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deSpace'
--
-- * 'deToken'
--
-- * 'deAction'
--
-- * 'deEventTime'
--
-- * 'deUser'
--
-- * 'deConfigCompleteRedirectURL'
--
-- * 'deType'
--
-- * 'deMessage'
--
-- * 'deThreadKey'
deprecatedEvent
    :: DeprecatedEvent
deprecatedEvent =
    DeprecatedEvent'
    { _deSpace = Nothing
    , _deToken = Nothing
    , _deAction = Nothing
    , _deEventTime = Nothing
    , _deUser = Nothing
    , _deConfigCompleteRedirectURL = Nothing
    , _deType = Nothing
    , _deMessage = Nothing
    , _deThreadKey = Nothing
    }

-- | The room or DM in which the event occurred.
deSpace :: Lens' DeprecatedEvent (Maybe Space)
deSpace = lens _deSpace (\ s a -> s{_deSpace = a})

-- | A secret value that bots can use to verify if a request is from Google.
-- The token is randomly generated by Google, remains static, and can be
-- obtained from the Hangouts Chat API configuration page in the Cloud
-- Console. Developers can revoke\/regenerate it if needed from the same
-- page.
deToken :: Lens' DeprecatedEvent (Maybe Text)
deToken = lens _deToken (\ s a -> s{_deToken = a})

-- | The form action data associated with an interactive card that was
-- clicked. Only populated for CARD_CLICKED events. See the [Interactive
-- Cards guide](\/hangouts\/chat\/how-tos\/cards-onclick) for more
-- information.
deAction :: Lens' DeprecatedEvent (Maybe FormAction)
deAction = lens _deAction (\ s a -> s{_deAction = a})

-- | The timestamp indicating when the event was dispatched.
deEventTime :: Lens' DeprecatedEvent (Maybe UTCTime)
deEventTime
  = lens _deEventTime (\ s a -> s{_deEventTime = a}) .
      mapping _DateTime

-- | The user that triggered the event.
deUser :: Lens' DeprecatedEvent (Maybe User)
deUser = lens _deUser (\ s a -> s{_deUser = a})

-- | The URL the bot should redirect the user to after they have completed an
-- authorization or configuration flow outside of Hangouts Chat. See the
-- [Authorizing access to 3p services
-- guide](\/hangouts\/chat\/how-tos\/auth-3p) for more information.
deConfigCompleteRedirectURL :: Lens' DeprecatedEvent (Maybe Text)
deConfigCompleteRedirectURL
  = lens _deConfigCompleteRedirectURL
      (\ s a -> s{_deConfigCompleteRedirectURL = a})

-- | The type of the event.
deType :: Lens' DeprecatedEvent (Maybe DeprecatedEventType)
deType = lens _deType (\ s a -> s{_deType = a})

-- | The message that triggered the event, if applicable.
deMessage :: Lens' DeprecatedEvent (Maybe Message)
deMessage
  = lens _deMessage (\ s a -> s{_deMessage = a})

-- | The bot-defined key for the thread related to the event. See the
-- thread_key field of the \`spaces.message.create\` request for more
-- information.
deThreadKey :: Lens' DeprecatedEvent (Maybe Text)
deThreadKey
  = lens _deThreadKey (\ s a -> s{_deThreadKey = a})

instance FromJSON DeprecatedEvent where
        parseJSON
          = withObject "DeprecatedEvent"
              (\ o ->
                 DeprecatedEvent' <$>
                   (o .:? "space") <*> (o .:? "token") <*>
                     (o .:? "action")
                     <*> (o .:? "eventTime")
                     <*> (o .:? "user")
                     <*> (o .:? "configCompleteRedirectUrl")
                     <*> (o .:? "type")
                     <*> (o .:? "message")
                     <*> (o .:? "threadKey"))

instance ToJSON DeprecatedEvent where
        toJSON DeprecatedEvent'{..}
          = object
              (catMaybes
                 [("space" .=) <$> _deSpace,
                  ("token" .=) <$> _deToken,
                  ("action" .=) <$> _deAction,
                  ("eventTime" .=) <$> _deEventTime,
                  ("user" .=) <$> _deUser,
                  ("configCompleteRedirectUrl" .=) <$>
                    _deConfigCompleteRedirectURL,
                  ("type" .=) <$> _deType,
                  ("message" .=) <$> _deMessage,
                  ("threadKey" .=) <$> _deThreadKey])

-- | A paragraph of text. Formatted text supported.
--
-- /See:/ 'textParagraph' smart constructor.
newtype TextParagraph = TextParagraph'
    { _tpText :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TextParagraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpText'
textParagraph
    :: TextParagraph
textParagraph =
    TextParagraph'
    { _tpText = Nothing
    }

tpText :: Lens' TextParagraph (Maybe Text)
tpText = lens _tpText (\ s a -> s{_tpText = a})

instance FromJSON TextParagraph where
        parseJSON
          = withObject "TextParagraph"
              (\ o -> TextParagraph' <$> (o .:? "text"))

instance ToJSON TextParagraph where
        toJSON TextParagraph'{..}
          = object (catMaybes [("text" .=) <$> _tpText])

-- | A button. Can be a text button or an image button.
--
-- /See:/ 'button' smart constructor.
data Button = Button'
    { _bTextButton  :: !(Maybe TextButton)
    , _bImageButton :: !(Maybe ImageButton)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Button' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bTextButton'
--
-- * 'bImageButton'
button
    :: Button
button =
    Button'
    { _bTextButton = Nothing
    , _bImageButton = Nothing
    }

-- | A button with text and onclick action.
bTextButton :: Lens' Button (Maybe TextButton)
bTextButton
  = lens _bTextButton (\ s a -> s{_bTextButton = a})

-- | A button with image and onclick action.
bImageButton :: Lens' Button (Maybe ImageButton)
bImageButton
  = lens _bImageButton (\ s a -> s{_bImageButton = a})

instance FromJSON Button where
        parseJSON
          = withObject "Button"
              (\ o ->
                 Button' <$>
                   (o .:? "textButton") <*> (o .:? "imageButton"))

instance ToJSON Button where
        toJSON Button'{..}
          = object
              (catMaybes
                 [("textButton" .=) <$> _bTextButton,
                  ("imageButton" .=) <$> _bImageButton])

--
-- /See:/ 'listSpacesResponse' smart constructor.
data ListSpacesResponse = ListSpacesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSpaces        :: !(Maybe [Space])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListSpacesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lsrNextPageToken'
--
-- * 'lsrSpaces'
listSpacesResponse
    :: ListSpacesResponse
listSpacesResponse =
    ListSpacesResponse'
    { _lsrNextPageToken = Nothing
    , _lsrSpaces = Nothing
    }

-- | Continuation token to retrieve the next page of results. It will be
-- empty for the last page of results. Tokens expire in an hour. An error
-- is thrown if an expired token is passed.
lsrNextPageToken :: Lens' ListSpacesResponse (Maybe Text)
lsrNextPageToken
  = lens _lsrNextPageToken
      (\ s a -> s{_lsrNextPageToken = a})

-- | List of spaces in the requested (or first) page.
lsrSpaces :: Lens' ListSpacesResponse [Space]
lsrSpaces
  = lens _lsrSpaces (\ s a -> s{_lsrSpaces = a}) .
      _Default
      . _Coerce

instance FromJSON ListSpacesResponse where
        parseJSON
          = withObject "ListSpacesResponse"
              (\ o ->
                 ListSpacesResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "spaces" .!= mempty))

instance ToJSON ListSpacesResponse where
        toJSON ListSpacesResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lsrNextPageToken,
                  ("spaces" .=) <$> _lsrSpaces])

-- | A user in Hangouts Chat.
--
-- /See:/ 'user' smart constructor.
data User = User'
    { _uName        :: !(Maybe Text)
    , _uDisplayName :: !(Maybe Text)
    , _uType        :: !(Maybe UserType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uName'
--
-- * 'uDisplayName'
--
-- * 'uType'
user
    :: User
user =
    User'
    { _uName = Nothing
    , _uDisplayName = Nothing
    , _uType = Nothing
    }

-- | Resource name, in the format \"users\/*\".
uName :: Lens' User (Maybe Text)
uName = lens _uName (\ s a -> s{_uName = a})

-- | The user\'s display name.
uDisplayName :: Lens' User (Maybe Text)
uDisplayName
  = lens _uDisplayName (\ s a -> s{_uDisplayName = a})

-- | User type.
uType :: Lens' User (Maybe UserType)
uType = lens _uType (\ s a -> s{_uType = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "name") <*> (o .:? "displayName") <*>
                     (o .:? "type"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _uName,
                  ("displayName" .=) <$> _uDisplayName,
                  ("type" .=) <$> _uType])

-- | A link that opens a new window.
--
-- /See:/ 'openLink' smart constructor.
newtype OpenLink = OpenLink'
    { _olURL :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'OpenLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olURL'
openLink
    :: OpenLink
openLink =
    OpenLink'
    { _olURL = Nothing
    }

-- | The URL to open.
olURL :: Lens' OpenLink (Maybe Text)
olURL = lens _olURL (\ s a -> s{_olURL = a})

instance FromJSON OpenLink where
        parseJSON
          = withObject "OpenLink"
              (\ o -> OpenLink' <$> (o .:? "url"))

instance ToJSON OpenLink where
        toJSON OpenLink'{..}
          = object (catMaybes [("url" .=) <$> _olURL])

-- | A card action is the action associated with the card. For an invoice
-- card, a typical action would be: delete invoice, email invoice or open
-- the invoice in browser.
--
-- /See:/ 'cardAction' smart constructor.
data CardAction = CardAction'
    { _caOnClick     :: !(Maybe OnClick)
    , _caActionLabel :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CardAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caOnClick'
--
-- * 'caActionLabel'
cardAction
    :: CardAction
cardAction =
    CardAction'
    { _caOnClick = Nothing
    , _caActionLabel = Nothing
    }

-- | The onclick action for this action item.
caOnClick :: Lens' CardAction (Maybe OnClick)
caOnClick
  = lens _caOnClick (\ s a -> s{_caOnClick = a})

-- | The label used to be displayed in the action menu item.
caActionLabel :: Lens' CardAction (Maybe Text)
caActionLabel
  = lens _caActionLabel
      (\ s a -> s{_caActionLabel = a})

instance FromJSON CardAction where
        parseJSON
          = withObject "CardAction"
              (\ o ->
                 CardAction' <$>
                   (o .:? "onClick") <*> (o .:? "actionLabel"))

instance ToJSON CardAction where
        toJSON CardAction'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _caOnClick,
                  ("actionLabel" .=) <$> _caActionLabel])

-- | Parameters that a bot can use to configure how it\'s response is posted.
--
-- /See:/ 'actionResponse' smart constructor.
data ActionResponse = ActionResponse'
    { _arURL  :: !(Maybe Text)
    , _arType :: !(Maybe ActionResponseType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arURL'
--
-- * 'arType'
actionResponse
    :: ActionResponse
actionResponse =
    ActionResponse'
    { _arURL = Nothing
    , _arType = Nothing
    }

-- | URL for users to auth or config. (Only for REQUEST_CONFIG response
-- types.)
arURL :: Lens' ActionResponse (Maybe Text)
arURL = lens _arURL (\ s a -> s{_arURL = a})

-- | The type of bot response.
arType :: Lens' ActionResponse (Maybe ActionResponseType)
arType = lens _arType (\ s a -> s{_arType = a})

instance FromJSON ActionResponse where
        parseJSON
          = withObject "ActionResponse"
              (\ o ->
                 ActionResponse' <$> (o .:? "url") <*> (o .:? "type"))

instance ToJSON ActionResponse where
        toJSON ActionResponse'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _arURL, ("type" .=) <$> _arType])

-- | A form action describes the behavior when the form is submitted. For
-- example, an Apps Script can be invoked to handle the form.
--
-- /See:/ 'formAction' smart constructor.
data FormAction = FormAction'
    { _faActionMethodName :: !(Maybe Text)
    , _faParameters       :: !(Maybe [ActionParameter])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FormAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'faActionMethodName'
--
-- * 'faParameters'
formAction
    :: FormAction
formAction =
    FormAction'
    { _faActionMethodName = Nothing
    , _faParameters = Nothing
    }

-- | Apps Script function to invoke when the containing element is
-- clicked\/activated.
faActionMethodName :: Lens' FormAction (Maybe Text)
faActionMethodName
  = lens _faActionMethodName
      (\ s a -> s{_faActionMethodName = a})

-- | List of action parameters.
faParameters :: Lens' FormAction [ActionParameter]
faParameters
  = lens _faParameters (\ s a -> s{_faParameters = a})
      . _Default
      . _Coerce

instance FromJSON FormAction where
        parseJSON
          = withObject "FormAction"
              (\ o ->
                 FormAction' <$>
                   (o .:? "actionMethodName") <*>
                     (o .:? "parameters" .!= mempty))

instance ToJSON FormAction where
        toJSON FormAction'{..}
          = object
              (catMaybes
                 [("actionMethodName" .=) <$> _faActionMethodName,
                  ("parameters" .=) <$> _faParameters])

--
-- /See:/ 'listMembershipsResponse' smart constructor.
data ListMembershipsResponse = ListMembershipsResponse'
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrMemberships   :: !(Maybe [Membership])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ListMembershipsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmrNextPageToken'
--
-- * 'lmrMemberships'
listMembershipsResponse
    :: ListMembershipsResponse
listMembershipsResponse =
    ListMembershipsResponse'
    { _lmrNextPageToken = Nothing
    , _lmrMemberships = Nothing
    }

-- | Continuation token to retrieve the next page of results. It will be
-- empty for the last page of results.
lmrNextPageToken :: Lens' ListMembershipsResponse (Maybe Text)
lmrNextPageToken
  = lens _lmrNextPageToken
      (\ s a -> s{_lmrNextPageToken = a})

-- | List of memberships in the requested (or first) page.
lmrMemberships :: Lens' ListMembershipsResponse [Membership]
lmrMemberships
  = lens _lmrMemberships
      (\ s a -> s{_lmrMemberships = a})
      . _Default
      . _Coerce

instance FromJSON ListMembershipsResponse where
        parseJSON
          = withObject "ListMembershipsResponse"
              (\ o ->
                 ListMembershipsResponse' <$>
                   (o .:? "nextPageToken") <*>
                     (o .:? "memberships" .!= mempty))

instance ToJSON ListMembershipsResponse where
        toJSON ListMembershipsResponse'{..}
          = object
              (catMaybes
                 [("nextPageToken" .=) <$> _lmrNextPageToken,
                  ("memberships" .=) <$> _lmrMemberships])

-- | A message in Hangouts Chat.
--
-- /See:/ 'message' smart constructor.
data Message = Message'
    { _mesAnnotations    :: !(Maybe [Annotation])
    , _mesSpace          :: !(Maybe Space)
    , _mesText           :: !(Maybe Text)
    , _mesSender         :: !(Maybe User)
    , _mesName           :: !(Maybe Text)
    , _mesPreviewText    :: !(Maybe Text)
    , _mesCards          :: !(Maybe [Card])
    , _mesActionResponse :: !(Maybe ActionResponse)
    , _mesArgumentText   :: !(Maybe Text)
    , _mesThread         :: !(Maybe Thread)
    , _mesFallbackText   :: !(Maybe Text)
    , _mesCreateTime     :: !(Maybe DateTime')
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Message' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mesAnnotations'
--
-- * 'mesSpace'
--
-- * 'mesText'
--
-- * 'mesSender'
--
-- * 'mesName'
--
-- * 'mesPreviewText'
--
-- * 'mesCards'
--
-- * 'mesActionResponse'
--
-- * 'mesArgumentText'
--
-- * 'mesThread'
--
-- * 'mesFallbackText'
--
-- * 'mesCreateTime'
message
    :: Message
message =
    Message'
    { _mesAnnotations = Nothing
    , _mesSpace = Nothing
    , _mesText = Nothing
    , _mesSender = Nothing
    , _mesName = Nothing
    , _mesPreviewText = Nothing
    , _mesCards = Nothing
    , _mesActionResponse = Nothing
    , _mesArgumentText = Nothing
    , _mesThread = Nothing
    , _mesFallbackText = Nothing
    , _mesCreateTime = Nothing
    }

-- | Output only. Annotations associated with the text in this message.
mesAnnotations :: Lens' Message [Annotation]
mesAnnotations
  = lens _mesAnnotations
      (\ s a -> s{_mesAnnotations = a})
      . _Default
      . _Coerce

-- | The space the message belongs to.
mesSpace :: Lens' Message (Maybe Space)
mesSpace = lens _mesSpace (\ s a -> s{_mesSpace = a})

-- | Plain-text body of the message.
mesText :: Lens' Message (Maybe Text)
mesText = lens _mesText (\ s a -> s{_mesText = a})

-- | The user who created the message.
mesSender :: Lens' Message (Maybe User)
mesSender
  = lens _mesSender (\ s a -> s{_mesSender = a})

-- | Resource name, in the form \"spaces\/*\/messages\/*\". Example:
-- spaces\/AAAAMpdlehY\/messages\/UMxbHmzDlr4.UMxbHmzDlr4
mesName :: Lens' Message (Maybe Text)
mesName = lens _mesName (\ s a -> s{_mesName = a})

-- | Text for generating preview chips. This text will not be displayed to
-- the user, but any links to images, web pages, videos, etc. included here
-- will generate preview chips.
mesPreviewText :: Lens' Message (Maybe Text)
mesPreviewText
  = lens _mesPreviewText
      (\ s a -> s{_mesPreviewText = a})

-- | Rich, formatted and interactive cards that can be used to display UI
-- elements such as: formatted texts, buttons, clickable images. Cards are
-- normally displayed below the plain-text body of the message.
mesCards :: Lens' Message [Card]
mesCards
  = lens _mesCards (\ s a -> s{_mesCards = a}) .
      _Default
      . _Coerce

-- | Input only. Parameters that a bot can use to configure how its response
-- is posted.
mesActionResponse :: Lens' Message (Maybe ActionResponse)
mesActionResponse
  = lens _mesActionResponse
      (\ s a -> s{_mesActionResponse = a})

-- | Plain-text body of the message with all bot mentions stripped out.
mesArgumentText :: Lens' Message (Maybe Text)
mesArgumentText
  = lens _mesArgumentText
      (\ s a -> s{_mesArgumentText = a})

-- | The thread the message belongs to.
mesThread :: Lens' Message (Maybe Thread)
mesThread
  = lens _mesThread (\ s a -> s{_mesThread = a})

-- | A plain-text description of the message\'s cards, used when the actual
-- cards cannot be displayed (e.g. mobile notifications).
mesFallbackText :: Lens' Message (Maybe Text)
mesFallbackText
  = lens _mesFallbackText
      (\ s a -> s{_mesFallbackText = a})

-- | Output only. The time at which the message was created in Hangouts Chat
-- server.
mesCreateTime :: Lens' Message (Maybe UTCTime)
mesCreateTime
  = lens _mesCreateTime
      (\ s a -> s{_mesCreateTime = a})
      . mapping _DateTime

instance FromJSON Message where
        parseJSON
          = withObject "Message"
              (\ o ->
                 Message' <$>
                   (o .:? "annotations" .!= mempty) <*> (o .:? "space")
                     <*> (o .:? "text")
                     <*> (o .:? "sender")
                     <*> (o .:? "name")
                     <*> (o .:? "previewText")
                     <*> (o .:? "cards" .!= mempty)
                     <*> (o .:? "actionResponse")
                     <*> (o .:? "argumentText")
                     <*> (o .:? "thread")
                     <*> (o .:? "fallbackText")
                     <*> (o .:? "createTime"))

instance ToJSON Message where
        toJSON Message'{..}
          = object
              (catMaybes
                 [("annotations" .=) <$> _mesAnnotations,
                  ("space" .=) <$> _mesSpace, ("text" .=) <$> _mesText,
                  ("sender" .=) <$> _mesSender,
                  ("name" .=) <$> _mesName,
                  ("previewText" .=) <$> _mesPreviewText,
                  ("cards" .=) <$> _mesCards,
                  ("actionResponse" .=) <$> _mesActionResponse,
                  ("argumentText" .=) <$> _mesArgumentText,
                  ("thread" .=) <$> _mesThread,
                  ("fallbackText" .=) <$> _mesFallbackText,
                  ("createTime" .=) <$> _mesCreateTime])

--
-- /See:/ 'cardHeader' smart constructor.
data CardHeader = CardHeader'
    { _chSubtitle   :: !(Maybe Text)
    , _chImageURL   :: !(Maybe Text)
    , _chTitle      :: !(Maybe Text)
    , _chImageStyle :: !(Maybe CardHeaderImageStyle)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CardHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'chSubtitle'
--
-- * 'chImageURL'
--
-- * 'chTitle'
--
-- * 'chImageStyle'
cardHeader
    :: CardHeader
cardHeader =
    CardHeader'
    { _chSubtitle = Nothing
    , _chImageURL = Nothing
    , _chTitle = Nothing
    , _chImageStyle = Nothing
    }

-- | The subtitle of the card header.
chSubtitle :: Lens' CardHeader (Maybe Text)
chSubtitle
  = lens _chSubtitle (\ s a -> s{_chSubtitle = a})

-- | The URL of the image in the card header.
chImageURL :: Lens' CardHeader (Maybe Text)
chImageURL
  = lens _chImageURL (\ s a -> s{_chImageURL = a})

-- | The title must be specified. The header has a fixed height: if both a
-- title and subtitle is specified, each will take up 1 line. If only the
-- title is specified, it will take up both lines.
chTitle :: Lens' CardHeader (Maybe Text)
chTitle = lens _chTitle (\ s a -> s{_chTitle = a})

-- | The image\'s type (e.g. square border or circular border).
chImageStyle :: Lens' CardHeader (Maybe CardHeaderImageStyle)
chImageStyle
  = lens _chImageStyle (\ s a -> s{_chImageStyle = a})

instance FromJSON CardHeader where
        parseJSON
          = withObject "CardHeader"
              (\ o ->
                 CardHeader' <$>
                   (o .:? "subtitle") <*> (o .:? "imageUrl") <*>
                     (o .:? "title")
                     <*> (o .:? "imageStyle"))

instance ToJSON CardHeader where
        toJSON CardHeader'{..}
          = object
              (catMaybes
                 [("subtitle" .=) <$> _chSubtitle,
                  ("imageUrl" .=) <$> _chImageURL,
                  ("title" .=) <$> _chTitle,
                  ("imageStyle" .=) <$> _chImageStyle])

-- | A button with text and onclick action.
--
-- /See:/ 'textButton' smart constructor.
data TextButton = TextButton'
    { _tbOnClick :: !(Maybe OnClick)
    , _tbText    :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TextButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbOnClick'
--
-- * 'tbText'
textButton
    :: TextButton
textButton =
    TextButton'
    { _tbOnClick = Nothing
    , _tbText = Nothing
    }

-- | The onclick action of the button.
tbOnClick :: Lens' TextButton (Maybe OnClick)
tbOnClick
  = lens _tbOnClick (\ s a -> s{_tbOnClick = a})

-- | The text of the button.
tbText :: Lens' TextButton (Maybe Text)
tbText = lens _tbText (\ s a -> s{_tbText = a})

instance FromJSON TextButton where
        parseJSON
          = withObject "TextButton"
              (\ o ->
                 TextButton' <$> (o .:? "onClick") <*> (o .:? "text"))

instance ToJSON TextButton where
        toJSON TextButton'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _tbOnClick,
                  ("text" .=) <$> _tbText])

-- | A thread in Hangouts Chat.
--
-- /See:/ 'thread' smart constructor.
newtype Thread = Thread'
    { _tName :: Maybe Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Thread' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tName'
thread
    :: Thread
thread =
    Thread'
    { _tName = Nothing
    }

-- | Resource name, in the form \"spaces\/*\/threads\/*\". Example:
-- spaces\/AAAAMpdlehY\/threads\/UMxbHmzDlr4
tName :: Lens' Thread (Maybe Text)
tName = lens _tName (\ s a -> s{_tName = a})

instance FromJSON Thread where
        parseJSON
          = withObject "Thread"
              (\ o -> Thread' <$> (o .:? "name"))

instance ToJSON Thread where
        toJSON Thread'{..}
          = object (catMaybes [("name" .=) <$> _tName])

-- | Annotation metadata for user mentions (\').
--
-- /See:/ 'userMentionMetadata' smart constructor.
data UserMentionMetadata = UserMentionMetadata'
    { _ummUser :: !(Maybe User)
    , _ummType :: !(Maybe UserMentionMetadataType)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'UserMentionMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ummUser'
--
-- * 'ummType'
userMentionMetadata
    :: UserMentionMetadata
userMentionMetadata =
    UserMentionMetadata'
    { _ummUser = Nothing
    , _ummType = Nothing
    }

-- | The user mentioned.
ummUser :: Lens' UserMentionMetadata (Maybe User)
ummUser = lens _ummUser (\ s a -> s{_ummUser = a})

-- | The type of user mention.
ummType :: Lens' UserMentionMetadata (Maybe UserMentionMetadataType)
ummType = lens _ummType (\ s a -> s{_ummType = a})

instance FromJSON UserMentionMetadata where
        parseJSON
          = withObject "UserMentionMetadata"
              (\ o ->
                 UserMentionMetadata' <$>
                   (o .:? "user") <*> (o .:? "type"))

instance ToJSON UserMentionMetadata where
        toJSON UserMentionMetadata'{..}
          = object
              (catMaybes
                 [("user" .=) <$> _ummUser, ("type" .=) <$> _ummType])

-- | An image button with an onclick action.
--
-- /See:/ 'imageButton' smart constructor.
data ImageButton = ImageButton'
    { _ibOnClick :: !(Maybe OnClick)
    , _ibIcon    :: !(Maybe ImageButtonIcon)
    , _ibName    :: !(Maybe Text)
    , _ibIconURL :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImageButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ibOnClick'
--
-- * 'ibIcon'
--
-- * 'ibName'
--
-- * 'ibIconURL'
imageButton
    :: ImageButton
imageButton =
    ImageButton'
    { _ibOnClick = Nothing
    , _ibIcon = Nothing
    , _ibName = Nothing
    , _ibIconURL = Nothing
    }

-- | The onclick action.
ibOnClick :: Lens' ImageButton (Maybe OnClick)
ibOnClick
  = lens _ibOnClick (\ s a -> s{_ibOnClick = a})

-- | The icon specified by an enum that indices to an icon provided by Chat
-- API.
ibIcon :: Lens' ImageButton (Maybe ImageButtonIcon)
ibIcon = lens _ibIcon (\ s a -> s{_ibIcon = a})

-- | The name of this image_button which will be used for accessibility.
-- Default value will be provided if developers don\'t specify.
ibName :: Lens' ImageButton (Maybe Text)
ibName = lens _ibName (\ s a -> s{_ibName = a})

-- | The icon specified by a URL.
ibIconURL :: Lens' ImageButton (Maybe Text)
ibIconURL
  = lens _ibIconURL (\ s a -> s{_ibIconURL = a})

instance FromJSON ImageButton where
        parseJSON
          = withObject "ImageButton"
              (\ o ->
                 ImageButton' <$>
                   (o .:? "onClick") <*> (o .:? "icon") <*>
                     (o .:? "name")
                     <*> (o .:? "iconUrl"))

instance ToJSON ImageButton where
        toJSON ImageButton'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _ibOnClick,
                  ("icon" .=) <$> _ibIcon, ("name" .=) <$> _ibName,
                  ("iconUrl" .=) <$> _ibIconURL])

-- | A section contains a collection of widgets that are rendered
-- (vertically) in the order that they are specified. Across all platforms,
-- cards have a narrow fixed width, so there is currently no need for
-- layout properties (e.g. float).
--
-- /See:/ 'section' smart constructor.
data Section = Section'
    { _sWidgets :: !(Maybe [WidgetMarkup])
    , _sHeader  :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Section' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sWidgets'
--
-- * 'sHeader'
section
    :: Section
section =
    Section'
    { _sWidgets = Nothing
    , _sHeader = Nothing
    }

-- | A section must contain at least 1 widget.
sWidgets :: Lens' Section [WidgetMarkup]
sWidgets
  = lens _sWidgets (\ s a -> s{_sWidgets = a}) .
      _Default
      . _Coerce

-- | The header of the section, text formatted supported.
sHeader :: Lens' Section (Maybe Text)
sHeader = lens _sHeader (\ s a -> s{_sHeader = a})

instance FromJSON Section where
        parseJSON
          = withObject "Section"
              (\ o ->
                 Section' <$>
                   (o .:? "widgets" .!= mempty) <*> (o .:? "header"))

instance ToJSON Section where
        toJSON Section'{..}
          = object
              (catMaybes
                 [("widgets" .=) <$> _sWidgets,
                  ("header" .=) <$> _sHeader])
