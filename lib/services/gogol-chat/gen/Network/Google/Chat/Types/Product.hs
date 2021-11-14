{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Chat.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Chat.Types.Product where

import Network.Google.Chat.Types.Sum
import Network.Google.Prelude

-- | A card is a UI element that can contain UI widgets such as texts,
-- images.
--
-- /See:/ 'card' smart constructor.
data Card =
  Card'
    { _cCardActions :: !(Maybe [CardAction])
    , _cName :: !(Maybe Text)
    , _cHeader :: !(Maybe CardHeader)
    , _cSections :: !(Maybe [Section])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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

-- | A list of buttons layed out horizontally.
--
-- /See:/ 'googleAppsCardV1ButtonList' smart constructor.
newtype GoogleAppsCardV1ButtonList =
  GoogleAppsCardV1ButtonList'
    { _gacvblButtons :: Maybe [GoogleAppsCardV1Button]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1ButtonList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvblButtons'
googleAppsCardV1ButtonList
    :: GoogleAppsCardV1ButtonList
googleAppsCardV1ButtonList =
  GoogleAppsCardV1ButtonList' {_gacvblButtons = Nothing}


gacvblButtons :: Lens' GoogleAppsCardV1ButtonList [GoogleAppsCardV1Button]
gacvblButtons
  = lens _gacvblButtons
      (\ s a -> s{_gacvblButtons = a})
      . _Default
      . _Coerce

instance FromJSON GoogleAppsCardV1ButtonList where
        parseJSON
          = withObject "GoogleAppsCardV1ButtonList"
              (\ o ->
                 GoogleAppsCardV1ButtonList' <$>
                   (o .:? "buttons" .!= mempty))

instance ToJSON GoogleAppsCardV1ButtonList where
        toJSON GoogleAppsCardV1ButtonList'{..}
          = object
              (catMaybes [("buttons" .=) <$> _gacvblButtons])

-- | A room or DM in Hangouts Chat.
--
-- /See:/ 'space' smart constructor.
data Space =
  Space'
    { _sName :: !(Maybe Text)
    , _sThreaded :: !(Maybe Bool)
    , _sDisplayName :: !(Maybe Text)
    , _sType :: !(Maybe SpaceType)
    , _sSingleUserBotDm :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Space' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sName'
--
-- * 'sThreaded'
--
-- * 'sDisplayName'
--
-- * 'sType'
--
-- * 'sSingleUserBotDm'
space
    :: Space
space =
  Space'
    { _sName = Nothing
    , _sThreaded = Nothing
    , _sDisplayName = Nothing
    , _sType = Nothing
    , _sSingleUserBotDm = Nothing
    }


-- | Resource name of the space, in the form \"spaces\/*\". Example:
-- spaces\/AAAAMpdlehYs
sName :: Lens' Space (Maybe Text)
sName = lens _sName (\ s a -> s{_sName = a})

-- | Whether the messages are threaded in this space.
sThreaded :: Lens' Space (Maybe Bool)
sThreaded
  = lens _sThreaded (\ s a -> s{_sThreaded = a})

-- | Output only. The display name (only if the space is a room). Please note
-- that this field might not be populated in direct messages between
-- humans.
sDisplayName :: Lens' Space (Maybe Text)
sDisplayName
  = lens _sDisplayName (\ s a -> s{_sDisplayName = a})

-- | Output only. The type of a space. This is deprecated. Use
-- \`single_user_bot_dm\` instead.
sType :: Lens' Space (Maybe SpaceType)
sType = lens _sType (\ s a -> s{_sType = a})

-- | Whether the space is a DM between a bot and a single human.
sSingleUserBotDm :: Lens' Space (Maybe Bool)
sSingleUserBotDm
  = lens _sSingleUserBotDm
      (\ s a -> s{_sSingleUserBotDm = a})

instance FromJSON Space where
        parseJSON
          = withObject "Space"
              (\ o ->
                 Space' <$>
                   (o .:? "name") <*> (o .:? "threaded") <*>
                     (o .:? "displayName")
                     <*> (o .:? "type")
                     <*> (o .:? "singleUserBotDm"))

instance ToJSON Space where
        toJSON Space'{..}
          = object
              (catMaybes
                 [("name" .=) <$> _sName,
                  ("threaded" .=) <$> _sThreaded,
                  ("displayName" .=) <$> _sDisplayName,
                  ("type" .=) <$> _sType,
                  ("singleUserBotDm" .=) <$> _sSingleUserBotDm])

-- | A UI element contains a key (label) and a value (content). And this
-- element may also contain some actions such as onclick button.
--
-- /See:/ 'keyValue' smart constructor.
data KeyValue =
  KeyValue'
    { _kvOnClick :: !(Maybe OnClick)
    , _kvTopLabel :: !(Maybe Text)
    , _kvIcon :: !(Maybe KeyValueIcon)
    , _kvButton :: !(Maybe Button)
    , _kvContent :: !(Maybe Text)
    , _kvIconURL :: !(Maybe Text)
    , _kvContentMultiline :: !(Maybe Bool)
    , _kvBottomLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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

--
-- /See:/ 'googleAppsCardV1OpenLink' smart constructor.
data GoogleAppsCardV1OpenLink =
  GoogleAppsCardV1OpenLink'
    { _gacvolURL :: !(Maybe Text)
    , _gacvolOpenAs :: !(Maybe GoogleAppsCardV1OpenLinkOpenAs)
    , _gacvolOnClose :: !(Maybe GoogleAppsCardV1OpenLinkOnClose)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1OpenLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvolURL'
--
-- * 'gacvolOpenAs'
--
-- * 'gacvolOnClose'
googleAppsCardV1OpenLink
    :: GoogleAppsCardV1OpenLink
googleAppsCardV1OpenLink =
  GoogleAppsCardV1OpenLink'
    {_gacvolURL = Nothing, _gacvolOpenAs = Nothing, _gacvolOnClose = Nothing}


-- | The URL to open.
gacvolURL :: Lens' GoogleAppsCardV1OpenLink (Maybe Text)
gacvolURL
  = lens _gacvolURL (\ s a -> s{_gacvolURL = a})

gacvolOpenAs :: Lens' GoogleAppsCardV1OpenLink (Maybe GoogleAppsCardV1OpenLinkOpenAs)
gacvolOpenAs
  = lens _gacvolOpenAs (\ s a -> s{_gacvolOpenAs = a})

gacvolOnClose :: Lens' GoogleAppsCardV1OpenLink (Maybe GoogleAppsCardV1OpenLinkOnClose)
gacvolOnClose
  = lens _gacvolOnClose
      (\ s a -> s{_gacvolOnClose = a})

instance FromJSON GoogleAppsCardV1OpenLink where
        parseJSON
          = withObject "GoogleAppsCardV1OpenLink"
              (\ o ->
                 GoogleAppsCardV1OpenLink' <$>
                   (o .:? "url") <*> (o .:? "openAs") <*>
                     (o .:? "onClose"))

instance ToJSON GoogleAppsCardV1OpenLink where
        toJSON GoogleAppsCardV1OpenLink'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _gacvolURL,
                  ("openAs" .=) <$> _gacvolOpenAs,
                  ("onClose" .=) <$> _gacvolOnClose])

-- | A widget is a UI element that presents texts, images, etc.
--
-- /See:/ 'widgetMarkup' smart constructor.
data WidgetMarkup =
  WidgetMarkup'
    { _wmKeyValue :: !(Maybe KeyValue)
    , _wmImage :: !(Maybe Image)
    , _wmButtons :: !(Maybe [Button])
    , _wmTextParagraph :: !(Maybe TextParagraph)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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

-- | A persistent (sticky) footer that is added to the bottom of the card.
--
-- /See:/ 'googleAppsCardV1CardFixedFooter' smart constructor.
data GoogleAppsCardV1CardFixedFooter =
  GoogleAppsCardV1CardFixedFooter'
    { _gacvcffPrimaryButton :: !(Maybe GoogleAppsCardV1Button)
    , _gacvcffSecondaryButton :: !(Maybe GoogleAppsCardV1Button)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1CardFixedFooter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvcffPrimaryButton'
--
-- * 'gacvcffSecondaryButton'
googleAppsCardV1CardFixedFooter
    :: GoogleAppsCardV1CardFixedFooter
googleAppsCardV1CardFixedFooter =
  GoogleAppsCardV1CardFixedFooter'
    {_gacvcffPrimaryButton = Nothing, _gacvcffSecondaryButton = Nothing}


-- | The primary button of the fixed footer. The button must be a text button
-- with text and color set.
gacvcffPrimaryButton :: Lens' GoogleAppsCardV1CardFixedFooter (Maybe GoogleAppsCardV1Button)
gacvcffPrimaryButton
  = lens _gacvcffPrimaryButton
      (\ s a -> s{_gacvcffPrimaryButton = a})

-- | The secondary button of the fixed footer. The button must be a text
-- button with text and color set. \`primaryButton\` must be set if
-- \`secondaryButton\` is set.
gacvcffSecondaryButton :: Lens' GoogleAppsCardV1CardFixedFooter (Maybe GoogleAppsCardV1Button)
gacvcffSecondaryButton
  = lens _gacvcffSecondaryButton
      (\ s a -> s{_gacvcffSecondaryButton = a})

instance FromJSON GoogleAppsCardV1CardFixedFooter
         where
        parseJSON
          = withObject "GoogleAppsCardV1CardFixedFooter"
              (\ o ->
                 GoogleAppsCardV1CardFixedFooter' <$>
                   (o .:? "primaryButton") <*>
                     (o .:? "secondaryButton"))

instance ToJSON GoogleAppsCardV1CardFixedFooter where
        toJSON GoogleAppsCardV1CardFixedFooter'{..}
          = object
              (catMaybes
                 [("primaryButton" .=) <$> _gacvcffPrimaryButton,
                  ("secondaryButton" .=) <$> _gacvcffSecondaryButton])

-- | The widget that lets users to specify a date and time.
--
-- /See:/ 'googleAppsCardV1DateTimePicker' smart constructor.
data GoogleAppsCardV1DateTimePicker =
  GoogleAppsCardV1DateTimePicker'
    { _gacvdtpValueMsEpoch :: !(Maybe (Textual Int64))
    , _gacvdtpTimezoneOffSetDate :: !(Maybe (Textual Int32))
    , _gacvdtpName :: !(Maybe Text)
    , _gacvdtpType :: !(Maybe GoogleAppsCardV1DateTimePickerType)
    , _gacvdtpLabel :: !(Maybe Text)
    , _gacvdtpOnChangeAction :: !(Maybe GoogleAppsCardV1Action)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1DateTimePicker' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvdtpValueMsEpoch'
--
-- * 'gacvdtpTimezoneOffSetDate'
--
-- * 'gacvdtpName'
--
-- * 'gacvdtpType'
--
-- * 'gacvdtpLabel'
--
-- * 'gacvdtpOnChangeAction'
googleAppsCardV1DateTimePicker
    :: GoogleAppsCardV1DateTimePicker
googleAppsCardV1DateTimePicker =
  GoogleAppsCardV1DateTimePicker'
    { _gacvdtpValueMsEpoch = Nothing
    , _gacvdtpTimezoneOffSetDate = Nothing
    , _gacvdtpName = Nothing
    , _gacvdtpType = Nothing
    , _gacvdtpLabel = Nothing
    , _gacvdtpOnChangeAction = Nothing
    }


-- | The value to display as the default value before user input or previous
-- user input. It is represented in milliseconds (Epoch time). For
-- \`DATE_AND_TIME\` type, the full epoch value is used. For \`DATE_ONLY\`
-- type, only date of the epoch time is used. For \`TIME_ONLY\` type, only
-- time of the epoch time is used. For example, you can set epoch time to
-- \`3 * 60 * 60 * 1000\` to represent 3am.
gacvdtpValueMsEpoch :: Lens' GoogleAppsCardV1DateTimePicker (Maybe Int64)
gacvdtpValueMsEpoch
  = lens _gacvdtpValueMsEpoch
      (\ s a -> s{_gacvdtpValueMsEpoch = a})
      . mapping _Coerce

-- | The number representing the time zone offset from UTC, in minutes. If
-- set, the \`value_ms_epoch\` is displayed in the specified time zone. If
-- not set, it uses the user\'s time zone setting on the client side.
gacvdtpTimezoneOffSetDate :: Lens' GoogleAppsCardV1DateTimePicker (Maybe Int32)
gacvdtpTimezoneOffSetDate
  = lens _gacvdtpTimezoneOffSetDate
      (\ s a -> s{_gacvdtpTimezoneOffSetDate = a})
      . mapping _Coerce

-- | The name of the text input that\'s used in formInput, and uniquely
-- identifies this input.
gacvdtpName :: Lens' GoogleAppsCardV1DateTimePicker (Maybe Text)
gacvdtpName
  = lens _gacvdtpName (\ s a -> s{_gacvdtpName = a})

-- | The type of the date\/time picker.
gacvdtpType :: Lens' GoogleAppsCardV1DateTimePicker (Maybe GoogleAppsCardV1DateTimePickerType)
gacvdtpType
  = lens _gacvdtpType (\ s a -> s{_gacvdtpType = a})

-- | The label for the field that displays to the user.
gacvdtpLabel :: Lens' GoogleAppsCardV1DateTimePicker (Maybe Text)
gacvdtpLabel
  = lens _gacvdtpLabel (\ s a -> s{_gacvdtpLabel = a})

-- | Triggered when the user clicks Save or Clear from the date\/time picker
-- dialog. This is only triggered if the value changed as a result of the
-- Save\/Clear operation.
gacvdtpOnChangeAction :: Lens' GoogleAppsCardV1DateTimePicker (Maybe GoogleAppsCardV1Action)
gacvdtpOnChangeAction
  = lens _gacvdtpOnChangeAction
      (\ s a -> s{_gacvdtpOnChangeAction = a})

instance FromJSON GoogleAppsCardV1DateTimePicker
         where
        parseJSON
          = withObject "GoogleAppsCardV1DateTimePicker"
              (\ o ->
                 GoogleAppsCardV1DateTimePicker' <$>
                   (o .:? "valueMsEpoch") <*>
                     (o .:? "timezoneOffsetDate")
                     <*> (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "label")
                     <*> (o .:? "onChangeAction"))

instance ToJSON GoogleAppsCardV1DateTimePicker where
        toJSON GoogleAppsCardV1DateTimePicker'{..}
          = object
              (catMaybes
                 [("valueMsEpoch" .=) <$> _gacvdtpValueMsEpoch,
                  ("timezoneOffsetDate" .=) <$>
                    _gacvdtpTimezoneOffSetDate,
                  ("name" .=) <$> _gacvdtpName,
                  ("type" .=) <$> _gacvdtpType,
                  ("label" .=) <$> _gacvdtpLabel,
                  ("onChangeAction" .=) <$> _gacvdtpOnChangeAction])

-- | An onclick action (e.g. open a link).
--
-- /See:/ 'onClick' smart constructor.
data OnClick =
  OnClick'
    { _ocAction :: !(Maybe FormAction)
    , _ocOpenLink :: !(Maybe OpenLink)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OnClick' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ocAction'
--
-- * 'ocOpenLink'
onClick
    :: OnClick
onClick = OnClick' {_ocAction = Nothing, _ocOpenLink = Nothing}


-- | A form action will be triggered by this onclick if specified.
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
data Annotation =
  Annotation'
    { _aLength :: !(Maybe (Textual Int32))
    , _aSlashCommand :: !(Maybe SlashCommandMetadata)
    , _aType :: !(Maybe AnnotationType)
    , _aUserMention :: !(Maybe UserMentionMetadata)
    , _aStartIndex :: !(Maybe (Textual Int32))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Annotation' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aLength'
--
-- * 'aSlashCommand'
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
    , _aSlashCommand = Nothing
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

-- | The metadata for a slash command.
aSlashCommand :: Lens' Annotation (Maybe SlashCommandMetadata)
aSlashCommand
  = lens _aSlashCommand
      (\ s a -> s{_aSlashCommand = a})

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
                   (o .:? "length") <*> (o .:? "slashCommand") <*>
                     (o .:? "type")
                     <*> (o .:? "userMention")
                     <*> (o .:? "startIndex"))

instance ToJSON Annotation where
        toJSON Annotation'{..}
          = object
              (catMaybes
                 [("length" .=) <$> _aLength,
                  ("slashCommand" .=) <$> _aSlashCommand,
                  ("type" .=) <$> _aType,
                  ("userMention" .=) <$> _aUserMention,
                  ("startIndex" .=) <$> _aStartIndex])

-- | An image that is specified by a URL and can have an onclick action.
--
-- /See:/ 'image' smart constructor.
data Image =
  Image'
    { _iOnClick :: !(Maybe OnClick)
    , _iAspectRatio :: !(Maybe (Textual Double))
    , _iImageURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  Image' {_iOnClick = Nothing, _iAspectRatio = Nothing, _iImageURL = Nothing}


-- | The onclick action.
iOnClick :: Lens' Image (Maybe OnClick)
iOnClick = lens _iOnClick (\ s a -> s{_iOnClick = a})

-- | The aspect ratio of this image (width\/height). This field allows
-- clients to reserve the right height for the image while waiting for it
-- to load. It\'s not meant to override the native aspect ratio of the
-- image. If unset, the server fills it by prefetching the image.
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

-- | A container wrapping elements necessary for showing suggestion items
-- used in text input autocomplete.
--
-- /See:/ 'googleAppsCardV1Suggestions' smart constructor.
newtype GoogleAppsCardV1Suggestions =
  GoogleAppsCardV1Suggestions'
    { _gacvsItems :: Maybe [GoogleAppsCardV1SuggestionItem]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Suggestions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvsItems'
googleAppsCardV1Suggestions
    :: GoogleAppsCardV1Suggestions
googleAppsCardV1Suggestions =
  GoogleAppsCardV1Suggestions' {_gacvsItems = Nothing}


-- | A list of suggestions items which will be used in are used in
-- autocomplete.
gacvsItems :: Lens' GoogleAppsCardV1Suggestions [GoogleAppsCardV1SuggestionItem]
gacvsItems
  = lens _gacvsItems (\ s a -> s{_gacvsItems = a}) .
      _Default
      . _Coerce

instance FromJSON GoogleAppsCardV1Suggestions where
        parseJSON
          = withObject "GoogleAppsCardV1Suggestions"
              (\ o ->
                 GoogleAppsCardV1Suggestions' <$>
                   (o .:? "items" .!= mempty))

instance ToJSON GoogleAppsCardV1Suggestions where
        toJSON GoogleAppsCardV1Suggestions'{..}
          = object (catMaybes [("items" .=) <$> _gacvsItems])

-- | List of string parameters to supply when the action method is invoked.
-- For example, consider three snooze buttons: snooze now, snooze 1 day,
-- snooze next week. You might use action method = snooze(), passing the
-- snooze type and snooze time in the list of string parameters.
--
-- /See:/ 'actionParameter' smart constructor.
data ActionParameter =
  ActionParameter'
    { _apValue :: !(Maybe Text)
    , _apKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apValue'
--
-- * 'apKey'
actionParameter
    :: ActionParameter
actionParameter = ActionParameter' {_apValue = Nothing, _apKey = Nothing}


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

-- | Annotation metadata for slash commands (\/).
--
-- /See:/ 'slashCommandMetadata' smart constructor.
data SlashCommandMetadata =
  SlashCommandMetadata'
    { _scmBot :: !(Maybe User)
    , _scmCommandId :: !(Maybe (Textual Int64))
    , _scmCommandName :: !(Maybe Text)
    , _scmType :: !(Maybe SlashCommandMetadataType)
    , _scmTriggersDialog :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SlashCommandMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scmBot'
--
-- * 'scmCommandId'
--
-- * 'scmCommandName'
--
-- * 'scmType'
--
-- * 'scmTriggersDialog'
slashCommandMetadata
    :: SlashCommandMetadata
slashCommandMetadata =
  SlashCommandMetadata'
    { _scmBot = Nothing
    , _scmCommandId = Nothing
    , _scmCommandName = Nothing
    , _scmType = Nothing
    , _scmTriggersDialog = Nothing
    }


-- | The bot whose command was invoked.
scmBot :: Lens' SlashCommandMetadata (Maybe User)
scmBot = lens _scmBot (\ s a -> s{_scmBot = a})

-- | The command id of the invoked slash command.
scmCommandId :: Lens' SlashCommandMetadata (Maybe Int64)
scmCommandId
  = lens _scmCommandId (\ s a -> s{_scmCommandId = a})
      . mapping _Coerce

-- | The name of the invoked slash command.
scmCommandName :: Lens' SlashCommandMetadata (Maybe Text)
scmCommandName
  = lens _scmCommandName
      (\ s a -> s{_scmCommandName = a})

-- | The type of slash command.
scmType :: Lens' SlashCommandMetadata (Maybe SlashCommandMetadataType)
scmType = lens _scmType (\ s a -> s{_scmType = a})

-- | Indicating whether the slash command is for a dialog.
scmTriggersDialog :: Lens' SlashCommandMetadata (Maybe Bool)
scmTriggersDialog
  = lens _scmTriggersDialog
      (\ s a -> s{_scmTriggersDialog = a})

instance FromJSON SlashCommandMetadata where
        parseJSON
          = withObject "SlashCommandMetadata"
              (\ o ->
                 SlashCommandMetadata' <$>
                   (o .:? "bot") <*> (o .:? "commandId") <*>
                     (o .:? "commandName")
                     <*> (o .:? "type")
                     <*> (o .:? "triggersDialog"))

instance ToJSON SlashCommandMetadata where
        toJSON SlashCommandMetadata'{..}
          = object
              (catMaybes
                 [("bot" .=) <$> _scmBot,
                  ("commandId" .=) <$> _scmCommandId,
                  ("commandName" .=) <$> _scmCommandName,
                  ("type" .=) <$> _scmType,
                  ("triggersDialog" .=) <$> _scmTriggersDialog])

-- | A card action is the action associated with the card. For example, an
-- invoice card might include actions such as delete invoice, email
-- invoice, or open the invoice in a browser.
--
-- /See:/ 'googleAppsCardV1CardAction' smart constructor.
data GoogleAppsCardV1CardAction =
  GoogleAppsCardV1CardAction'
    { _gacvcaOnClick :: !(Maybe GoogleAppsCardV1OnClick)
    , _gacvcaActionLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1CardAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvcaOnClick'
--
-- * 'gacvcaActionLabel'
googleAppsCardV1CardAction
    :: GoogleAppsCardV1CardAction
googleAppsCardV1CardAction =
  GoogleAppsCardV1CardAction'
    {_gacvcaOnClick = Nothing, _gacvcaActionLabel = Nothing}


-- | The onclick action for this action item.
gacvcaOnClick :: Lens' GoogleAppsCardV1CardAction (Maybe GoogleAppsCardV1OnClick)
gacvcaOnClick
  = lens _gacvcaOnClick
      (\ s a -> s{_gacvcaOnClick = a})

-- | The label that displays as the action menu item.
gacvcaActionLabel :: Lens' GoogleAppsCardV1CardAction (Maybe Text)
gacvcaActionLabel
  = lens _gacvcaActionLabel
      (\ s a -> s{_gacvcaActionLabel = a})

instance FromJSON GoogleAppsCardV1CardAction where
        parseJSON
          = withObject "GoogleAppsCardV1CardAction"
              (\ o ->
                 GoogleAppsCardV1CardAction' <$>
                   (o .:? "onClick") <*> (o .:? "actionLabel"))

instance ToJSON GoogleAppsCardV1CardAction where
        toJSON GoogleAppsCardV1CardAction'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _gacvcaOnClick,
                  ("actionLabel" .=) <$> _gacvcaActionLabel])

-- | Represents a membership relation in Hangouts Chat.
--
-- /See:/ 'membership' smart constructor.
data Membership =
  Membership'
    { _mState :: !(Maybe MembershipState)
    , _mName :: !(Maybe Text)
    , _mMember :: !(Maybe User)
    , _mCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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

mName :: Lens' Membership (Maybe Text)
mName = lens _mName (\ s a -> s{_mName = a})

-- | A User in Hangout Chat
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
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Empty' with the minimum fields required to make a request.
--
empty
    :: Empty
empty = Empty'


instance FromJSON Empty where
        parseJSON = withObject "Empty" (\ o -> pure Empty')

instance ToJSON Empty where
        toJSON = const emptyObject

-- | Represents a color in the RGBA color space. This representation is
-- designed for simplicity of conversion to\/from color representations in
-- various languages over compactness. For example, the fields of this
-- representation can be trivially provided to the constructor of
-- \`java.awt.Color\` in Java; it can also be trivially provided to
-- UIColor\'s \`+colorWithRed:green:blue:alpha\` method in iOS; and, with
-- just a little work, it can be easily formatted into a CSS \`rgba()\`
-- string in JavaScript. This reference page doesn\'t carry information
-- about the absolute color space that should be used to interpret the RGB
-- value (e.g. sRGB, Adobe RGB, DCI-P3, BT.2020, etc.). By default,
-- applications should assume the sRGB color space. When color equality
-- needs to be decided, implementations, unless documented otherwise, treat
-- two colors as equal if all their red, green, blue, and alpha values each
-- differ by at most 1e-5. Example (Java): import com.google.type.Color;
-- \/\/ ... public static java.awt.Color fromProto(Color protocolor) {
-- float alpha = protocolor.hasAlpha() ? protocolor.getAlpha().getValue() :
-- 1.0; return new java.awt.Color( protocolor.getRed(),
-- protocolor.getGreen(), protocolor.getBlue(), alpha); } public static
-- Color toProto(java.awt.Color color) { float red = (float)
-- color.getRed(); float green = (float) color.getGreen(); float blue =
-- (float) color.getBlue(); float denominator = 255.0; Color.Builder
-- resultBuilder = Color .newBuilder() .setRed(red \/ denominator)
-- .setGreen(green \/ denominator) .setBlue(blue \/ denominator); int alpha
-- = color.getAlpha(); if (alpha != 255) { result.setAlpha( FloatValue
-- .newBuilder() .setValue(((float) alpha) \/ denominator) .build()); }
-- return resultBuilder.build(); } \/\/ ... Example (iOS \/ Obj-C): \/\/
-- ... static UIColor* fromProto(Color* protocolor) { float red =
-- [protocolor red]; float green = [protocolor green]; float blue =
-- [protocolor blue]; FloatValue* alpha_wrapper = [protocolor alpha]; float
-- alpha = 1.0; if (alpha_wrapper != nil) { alpha = [alpha_wrapper value];
-- } return [UIColor colorWithRed:red green:green blue:blue alpha:alpha]; }
-- static Color* toProto(UIColor* color) { CGFloat red, green, blue, alpha;
-- if (![color getRed:&red green:&green blue:&blue alpha:&alpha]) { return
-- nil; } Color* result = [[Color alloc] init]; [result setRed:red];
-- [result setGreen:green]; [result setBlue:blue]; if (alpha \<= 0.9999) {
-- [result setAlpha:floatWrapperWithValue(alpha)]; } [result autorelease];
-- return result; } \/\/ ... Example (JavaScript): \/\/ ... var
-- protoToCssColor = function(rgb_color) { var redFrac = rgb_color.red ||
-- 0.0; var greenFrac = rgb_color.green || 0.0; var blueFrac =
-- rgb_color.blue || 0.0; var red = Math.floor(redFrac * 255); var green =
-- Math.floor(greenFrac * 255); var blue = Math.floor(blueFrac * 255); if
-- (!(\'alpha\' in rgb_color)) { return rgbToCssColor(red, green, blue); }
-- var alphaFrac = rgb_color.alpha.value || 0.0; var rgbParams = [red,
-- green, blue].join(\',\'); return [\'rgba(\', rgbParams, \',\',
-- alphaFrac, \')\'].join(\'\'); }; var rgbToCssColor = function(red,
-- green, blue) { var rgbNumber = new Number((red \<\< 16) | (green \<\< 8)
-- | blue); var hexString = rgbNumber.toString(16); var missingZeros = 6 -
-- hexString.length; var resultBuilder = [\'#\']; for (var i = 0; i \<
-- missingZeros; i++) { resultBuilder.push(\'0\'); }
-- resultBuilder.push(hexString); return resultBuilder.join(\'\'); }; \/\/
-- ...
--
-- /See:/ 'color' smart constructor.
data Color =
  Color'
    { _cRed :: !(Maybe (Textual Double))
    , _cAlpha :: !(Maybe (Textual Double))
    , _cGreen :: !(Maybe (Textual Double))
    , _cBlue :: !(Maybe (Textual Double))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Color' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cRed'
--
-- * 'cAlpha'
--
-- * 'cGreen'
--
-- * 'cBlue'
color
    :: Color
color =
  Color'
    {_cRed = Nothing, _cAlpha = Nothing, _cGreen = Nothing, _cBlue = Nothing}


-- | The amount of red in the color as a value in the interval [0, 1].
cRed :: Lens' Color (Maybe Double)
cRed
  = lens _cRed (\ s a -> s{_cRed = a}) .
      mapping _Coerce

-- | The fraction of this color that should be applied to the pixel. That is,
-- the final pixel color is defined by the equation: \`pixel color = alpha
-- * (this color) + (1.0 - alpha) * (background color)\` This means that a
-- value of 1.0 corresponds to a solid color, whereas a value of 0.0
-- corresponds to a completely transparent color. This uses a wrapper
-- message rather than a simple float scalar so that it is possible to
-- distinguish between a default value and the value being unset. If
-- omitted, this color object is rendered as a solid color (as if the alpha
-- value had been explicitly given a value of 1.0).
cAlpha :: Lens' Color (Maybe Double)
cAlpha
  = lens _cAlpha (\ s a -> s{_cAlpha = a}) .
      mapping _Coerce

-- | The amount of green in the color as a value in the interval [0, 1].
cGreen :: Lens' Color (Maybe Double)
cGreen
  = lens _cGreen (\ s a -> s{_cGreen = a}) .
      mapping _Coerce

-- | The amount of blue in the color as a value in the interval [0, 1].
cBlue :: Lens' Color (Maybe Double)
cBlue
  = lens _cBlue (\ s a -> s{_cBlue = a}) .
      mapping _Coerce

instance FromJSON Color where
        parseJSON
          = withObject "Color"
              (\ o ->
                 Color' <$>
                   (o .:? "red") <*> (o .:? "alpha") <*> (o .:? "green")
                     <*> (o .:? "blue"))

instance ToJSON Color where
        toJSON Color'{..}
          = object
              (catMaybes
                 [("red" .=) <$> _cRed, ("alpha" .=) <$> _cAlpha,
                  ("green" .=) <$> _cGreen, ("blue" .=) <$> _cBlue])

-- | Google Chat events.
--
-- /See:/ 'deprecatedEvent' smart constructor.
data DeprecatedEvent =
  DeprecatedEvent'
    { _deSpace :: !(Maybe Space)
    , _deToken :: !(Maybe Text)
    , _deAction :: !(Maybe FormAction)
    , _deEventTime :: !(Maybe DateTime')
    , _deUser :: !(Maybe User)
    , _deConfigCompleteRedirectURL :: !(Maybe Text)
    , _deType :: !(Maybe DeprecatedEventType)
    , _deMessage :: !(Maybe Message)
    , _deThreadKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- obtained from the Google Chat API configuration page in the Cloud
-- Console. Developers can revoke\/regenerate it if needed from the same
-- page.
deToken :: Lens' DeprecatedEvent (Maybe Text)
deToken = lens _deToken (\ s a -> s{_deToken = a})

-- | The form action data associated with an interactive card that was
-- clicked. Only populated for CARD_CLICKED events. See the [Interactive
-- Cards guide](\/chat\/how-tos\/cards-onclick) for more information.
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
-- authorization or configuration flow outside of Google Chat. See the
-- [Authorizing access to 3p services guide](\/chat\/how-tos\/auth-3p) for
-- more information.
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

-- | Represents a Grid widget that displays items in a configurable grid
-- layout.
--
-- /See:/ 'googleAppsCardV1Grid' smart constructor.
data GoogleAppsCardV1Grid =
  GoogleAppsCardV1Grid'
    { _gacvgOnClick :: !(Maybe GoogleAppsCardV1OnClick)
    , _gacvgColumnCount :: !(Maybe (Textual Int32))
    , _gacvgItems :: !(Maybe [GoogleAppsCardV1GridItem])
    , _gacvgTitle :: !(Maybe Text)
    , _gacvgBOrderStyle :: !(Maybe GoogleAppsCardV1BOrderStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Grid' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvgOnClick'
--
-- * 'gacvgColumnCount'
--
-- * 'gacvgItems'
--
-- * 'gacvgTitle'
--
-- * 'gacvgBOrderStyle'
googleAppsCardV1Grid
    :: GoogleAppsCardV1Grid
googleAppsCardV1Grid =
  GoogleAppsCardV1Grid'
    { _gacvgOnClick = Nothing
    , _gacvgColumnCount = Nothing
    , _gacvgItems = Nothing
    , _gacvgTitle = Nothing
    , _gacvgBOrderStyle = Nothing
    }


-- | This callback is reused by each individual grid item, but with the
-- item\'s identifier and index in the items list added to the callback\'s
-- parameters.
gacvgOnClick :: Lens' GoogleAppsCardV1Grid (Maybe GoogleAppsCardV1OnClick)
gacvgOnClick
  = lens _gacvgOnClick (\ s a -> s{_gacvgOnClick = a})

-- | The number of columns to display in the grid. A default value is used if
-- this field isn\'t specified, and that default value is different
-- depending on where the grid is shown (dialog versus companion).
gacvgColumnCount :: Lens' GoogleAppsCardV1Grid (Maybe Int32)
gacvgColumnCount
  = lens _gacvgColumnCount
      (\ s a -> s{_gacvgColumnCount = a})
      . mapping _Coerce

-- | The items to display in the grid.
gacvgItems :: Lens' GoogleAppsCardV1Grid [GoogleAppsCardV1GridItem]
gacvgItems
  = lens _gacvgItems (\ s a -> s{_gacvgItems = a}) .
      _Default
      . _Coerce

-- | The text that displays in the grid header.
gacvgTitle :: Lens' GoogleAppsCardV1Grid (Maybe Text)
gacvgTitle
  = lens _gacvgTitle (\ s a -> s{_gacvgTitle = a})

-- | The border style to apply to each grid item.
gacvgBOrderStyle :: Lens' GoogleAppsCardV1Grid (Maybe GoogleAppsCardV1BOrderStyle)
gacvgBOrderStyle
  = lens _gacvgBOrderStyle
      (\ s a -> s{_gacvgBOrderStyle = a})

instance FromJSON GoogleAppsCardV1Grid where
        parseJSON
          = withObject "GoogleAppsCardV1Grid"
              (\ o ->
                 GoogleAppsCardV1Grid' <$>
                   (o .:? "onClick") <*> (o .:? "columnCount") <*>
                     (o .:? "items" .!= mempty)
                     <*> (o .:? "title")
                     <*> (o .:? "borderStyle"))

instance ToJSON GoogleAppsCardV1Grid where
        toJSON GoogleAppsCardV1Grid'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _gacvgOnClick,
                  ("columnCount" .=) <$> _gacvgColumnCount,
                  ("items" .=) <$> _gacvgItems,
                  ("title" .=) <$> _gacvgTitle,
                  ("borderStyle" .=) <$> _gacvgBOrderStyle])

--
-- /See:/ 'googleAppsCardV1ImageComponent' smart constructor.
data GoogleAppsCardV1ImageComponent =
  GoogleAppsCardV1ImageComponent'
    { _gacvicImageURI :: !(Maybe Text)
    , _gacvicAltText :: !(Maybe Text)
    , _gacvicBOrderStyle :: !(Maybe GoogleAppsCardV1BOrderStyle)
    , _gacvicCropStyle :: !(Maybe GoogleAppsCardV1ImageCropStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1ImageComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvicImageURI'
--
-- * 'gacvicAltText'
--
-- * 'gacvicBOrderStyle'
--
-- * 'gacvicCropStyle'
googleAppsCardV1ImageComponent
    :: GoogleAppsCardV1ImageComponent
googleAppsCardV1ImageComponent =
  GoogleAppsCardV1ImageComponent'
    { _gacvicImageURI = Nothing
    , _gacvicAltText = Nothing
    , _gacvicBOrderStyle = Nothing
    , _gacvicCropStyle = Nothing
    }


-- | The image URL.
gacvicImageURI :: Lens' GoogleAppsCardV1ImageComponent (Maybe Text)
gacvicImageURI
  = lens _gacvicImageURI
      (\ s a -> s{_gacvicImageURI = a})

-- | The accessibility label for the image.
gacvicAltText :: Lens' GoogleAppsCardV1ImageComponent (Maybe Text)
gacvicAltText
  = lens _gacvicAltText
      (\ s a -> s{_gacvicAltText = a})

-- | The border style to apply to the image.
gacvicBOrderStyle :: Lens' GoogleAppsCardV1ImageComponent (Maybe GoogleAppsCardV1BOrderStyle)
gacvicBOrderStyle
  = lens _gacvicBOrderStyle
      (\ s a -> s{_gacvicBOrderStyle = a})

-- | The crop style to apply to the image.
gacvicCropStyle :: Lens' GoogleAppsCardV1ImageComponent (Maybe GoogleAppsCardV1ImageCropStyle)
gacvicCropStyle
  = lens _gacvicCropStyle
      (\ s a -> s{_gacvicCropStyle = a})

instance FromJSON GoogleAppsCardV1ImageComponent
         where
        parseJSON
          = withObject "GoogleAppsCardV1ImageComponent"
              (\ o ->
                 GoogleAppsCardV1ImageComponent' <$>
                   (o .:? "imageUri") <*> (o .:? "altText") <*>
                     (o .:? "borderStyle")
                     <*> (o .:? "cropStyle"))

instance ToJSON GoogleAppsCardV1ImageComponent where
        toJSON GoogleAppsCardV1ImageComponent'{..}
          = object
              (catMaybes
                 [("imageUri" .=) <$> _gacvicImageURI,
                  ("altText" .=) <$> _gacvicAltText,
                  ("borderStyle" .=) <$> _gacvicBOrderStyle,
                  ("cropStyle" .=) <$> _gacvicCropStyle])

-- | A reference to the data of an attachment.
--
-- /See:/ 'attachmentDataRef' smart constructor.
newtype AttachmentDataRef =
  AttachmentDataRef'
    { _adrResourceName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AttachmentDataRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adrResourceName'
attachmentDataRef
    :: AttachmentDataRef
attachmentDataRef = AttachmentDataRef' {_adrResourceName = Nothing}


-- | The resource name of the attachment data. This is used with the media
-- API to download the attachment data.
adrResourceName :: Lens' AttachmentDataRef (Maybe Text)
adrResourceName
  = lens _adrResourceName
      (\ s a -> s{_adrResourceName = a})

instance FromJSON AttachmentDataRef where
        parseJSON
          = withObject "AttachmentDataRef"
              (\ o ->
                 AttachmentDataRef' <$> (o .:? "resourceName"))

instance ToJSON AttachmentDataRef where
        toJSON AttachmentDataRef'{..}
          = object
              (catMaybes
                 [("resourceName" .=) <$> _adrResourceName])

-- | Represents the complete border style applied to widgets.
--
-- /See:/ 'googleAppsCardV1BOrderStyle' smart constructor.
data GoogleAppsCardV1BOrderStyle =
  GoogleAppsCardV1BOrderStyle'
    { _gacvbosCornerRadius :: !(Maybe (Textual Int32))
    , _gacvbosType :: !(Maybe GoogleAppsCardV1BOrderStyleType)
    , _gacvbosStrokeColor :: !(Maybe Color)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1BOrderStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvbosCornerRadius'
--
-- * 'gacvbosType'
--
-- * 'gacvbosStrokeColor'
googleAppsCardV1BOrderStyle
    :: GoogleAppsCardV1BOrderStyle
googleAppsCardV1BOrderStyle =
  GoogleAppsCardV1BOrderStyle'
    { _gacvbosCornerRadius = Nothing
    , _gacvbosType = Nothing
    , _gacvbosStrokeColor = Nothing
    }


-- | The corner radius for the border.
gacvbosCornerRadius :: Lens' GoogleAppsCardV1BOrderStyle (Maybe Int32)
gacvbosCornerRadius
  = lens _gacvbosCornerRadius
      (\ s a -> s{_gacvbosCornerRadius = a})
      . mapping _Coerce

-- | The border type.
gacvbosType :: Lens' GoogleAppsCardV1BOrderStyle (Maybe GoogleAppsCardV1BOrderStyleType)
gacvbosType
  = lens _gacvbosType (\ s a -> s{_gacvbosType = a})

-- | The colors to use when the type is \`BORDER_TYPE_STROKE\`.
gacvbosStrokeColor :: Lens' GoogleAppsCardV1BOrderStyle (Maybe Color)
gacvbosStrokeColor
  = lens _gacvbosStrokeColor
      (\ s a -> s{_gacvbosStrokeColor = a})

instance FromJSON GoogleAppsCardV1BOrderStyle where
        parseJSON
          = withObject "GoogleAppsCardV1BOrderStyle"
              (\ o ->
                 GoogleAppsCardV1BOrderStyle' <$>
                   (o .:? "cornerRadius") <*> (o .:? "type") <*>
                     (o .:? "strokeColor"))

instance ToJSON GoogleAppsCardV1BOrderStyle where
        toJSON GoogleAppsCardV1BOrderStyle'{..}
          = object
              (catMaybes
                 [("cornerRadius" .=) <$> _gacvbosCornerRadius,
                  ("type" .=) <$> _gacvbosType,
                  ("strokeColor" .=) <$> _gacvbosStrokeColor])

--
-- /See:/ 'googleAppsCardV1CardHeader' smart constructor.
data GoogleAppsCardV1CardHeader =
  GoogleAppsCardV1CardHeader'
    { _gacvchImageAltText :: !(Maybe Text)
    , _gacvchSubtitle :: !(Maybe Text)
    , _gacvchImageURL :: !(Maybe Text)
    , _gacvchImageType :: !(Maybe GoogleAppsCardV1CardHeaderImageType)
    , _gacvchTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1CardHeader' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvchImageAltText'
--
-- * 'gacvchSubtitle'
--
-- * 'gacvchImageURL'
--
-- * 'gacvchImageType'
--
-- * 'gacvchTitle'
googleAppsCardV1CardHeader
    :: GoogleAppsCardV1CardHeader
googleAppsCardV1CardHeader =
  GoogleAppsCardV1CardHeader'
    { _gacvchImageAltText = Nothing
    , _gacvchSubtitle = Nothing
    , _gacvchImageURL = Nothing
    , _gacvchImageType = Nothing
    , _gacvchTitle = Nothing
    }


-- | The alternative text of this image which is used for accessibility.
gacvchImageAltText :: Lens' GoogleAppsCardV1CardHeader (Maybe Text)
gacvchImageAltText
  = lens _gacvchImageAltText
      (\ s a -> s{_gacvchImageAltText = a})

-- | The subtitle of the card header.
gacvchSubtitle :: Lens' GoogleAppsCardV1CardHeader (Maybe Text)
gacvchSubtitle
  = lens _gacvchSubtitle
      (\ s a -> s{_gacvchSubtitle = a})

-- | The URL of the image in the card header.
gacvchImageURL :: Lens' GoogleAppsCardV1CardHeader (Maybe Text)
gacvchImageURL
  = lens _gacvchImageURL
      (\ s a -> s{_gacvchImageURL = a})

-- | The image\'s type.
gacvchImageType :: Lens' GoogleAppsCardV1CardHeader (Maybe GoogleAppsCardV1CardHeaderImageType)
gacvchImageType
  = lens _gacvchImageType
      (\ s a -> s{_gacvchImageType = a})

-- | The title of the card header. The title must be specified. The header
-- has a fixed height: if both a title and subtitle are specified, each
-- takes up one line. If only the title is specified, it takes up both
-- lines.
gacvchTitle :: Lens' GoogleAppsCardV1CardHeader (Maybe Text)
gacvchTitle
  = lens _gacvchTitle (\ s a -> s{_gacvchTitle = a})

instance FromJSON GoogleAppsCardV1CardHeader where
        parseJSON
          = withObject "GoogleAppsCardV1CardHeader"
              (\ o ->
                 GoogleAppsCardV1CardHeader' <$>
                   (o .:? "imageAltText") <*> (o .:? "subtitle") <*>
                     (o .:? "imageUrl")
                     <*> (o .:? "imageType")
                     <*> (o .:? "title"))

instance ToJSON GoogleAppsCardV1CardHeader where
        toJSON GoogleAppsCardV1CardHeader'{..}
          = object
              (catMaybes
                 [("imageAltText" .=) <$> _gacvchImageAltText,
                  ("subtitle" .=) <$> _gacvchSubtitle,
                  ("imageUrl" .=) <$> _gacvchImageURL,
                  ("imageType" .=) <$> _gacvchImageType,
                  ("title" .=) <$> _gacvchTitle])

-- | A paragraph of text. Formatted text supported.
--
-- /See:/ 'textParagraph' smart constructor.
newtype TextParagraph =
  TextParagraph'
    { _tpText :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextParagraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpText'
textParagraph
    :: TextParagraph
textParagraph = TextParagraph' {_tpText = Nothing}


tpText :: Lens' TextParagraph (Maybe Text)
tpText = lens _tpText (\ s a -> s{_tpText = a})

instance FromJSON TextParagraph where
        parseJSON
          = withObject "TextParagraph"
              (\ o -> TextParagraph' <$> (o .:? "text"))

instance ToJSON TextParagraph where
        toJSON TextParagraph'{..}
          = object (catMaybes [("text" .=) <$> _tpText])

-- | Represents the crop style applied to an image.
--
-- /See:/ 'googleAppsCardV1ImageCropStyle' smart constructor.
data GoogleAppsCardV1ImageCropStyle =
  GoogleAppsCardV1ImageCropStyle'
    { _gacvicsAspectRatio :: !(Maybe (Textual Double))
    , _gacvicsType :: !(Maybe GoogleAppsCardV1ImageCropStyleType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1ImageCropStyle' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvicsAspectRatio'
--
-- * 'gacvicsType'
googleAppsCardV1ImageCropStyle
    :: GoogleAppsCardV1ImageCropStyle
googleAppsCardV1ImageCropStyle =
  GoogleAppsCardV1ImageCropStyle'
    {_gacvicsAspectRatio = Nothing, _gacvicsType = Nothing}


-- | The aspect ratio to use if the crop type is \`RECTANGLE_CUSTOM\`.
gacvicsAspectRatio :: Lens' GoogleAppsCardV1ImageCropStyle (Maybe Double)
gacvicsAspectRatio
  = lens _gacvicsAspectRatio
      (\ s a -> s{_gacvicsAspectRatio = a})
      . mapping _Coerce

-- | The crop type.
gacvicsType :: Lens' GoogleAppsCardV1ImageCropStyle (Maybe GoogleAppsCardV1ImageCropStyleType)
gacvicsType
  = lens _gacvicsType (\ s a -> s{_gacvicsType = a})

instance FromJSON GoogleAppsCardV1ImageCropStyle
         where
        parseJSON
          = withObject "GoogleAppsCardV1ImageCropStyle"
              (\ o ->
                 GoogleAppsCardV1ImageCropStyle' <$>
                   (o .:? "aspectRatio") <*> (o .:? "type"))

instance ToJSON GoogleAppsCardV1ImageCropStyle where
        toJSON GoogleAppsCardV1ImageCropStyle'{..}
          = object
              (catMaybes
                 [("aspectRatio" .=) <$> _gacvicsAspectRatio,
                  ("type" .=) <$> _gacvicsType])

-- | A button. Can be a text button or an image button.
--
-- /See:/ 'button' smart constructor.
data Button =
  Button'
    { _bTextButton :: !(Maybe TextButton)
    , _bImageButton :: !(Maybe ImageButton)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Button' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bTextButton'
--
-- * 'bImageButton'
button
    :: Button
button = Button' {_bTextButton = Nothing, _bImageButton = Nothing}


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
data ListSpacesResponse =
  ListSpacesResponse'
    { _lsrNextPageToken :: !(Maybe Text)
    , _lsrSpaces :: !(Maybe [Space])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  ListSpacesResponse' {_lsrNextPageToken = Nothing, _lsrSpaces = Nothing}


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

-- | A widget that creates a UI item (for example, a drop-down list) with
-- options for users to select.
--
-- /See:/ 'googleAppsCardV1SelectionInput' smart constructor.
data GoogleAppsCardV1SelectionInput =
  GoogleAppsCardV1SelectionInput'
    { _gacvsiItems :: !(Maybe [GoogleAppsCardV1SelectionItem])
    , _gacvsiName :: !(Maybe Text)
    , _gacvsiType :: !(Maybe GoogleAppsCardV1SelectionInputType)
    , _gacvsiLabel :: !(Maybe Text)
    , _gacvsiOnChangeAction :: !(Maybe GoogleAppsCardV1Action)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1SelectionInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvsiItems'
--
-- * 'gacvsiName'
--
-- * 'gacvsiType'
--
-- * 'gacvsiLabel'
--
-- * 'gacvsiOnChangeAction'
googleAppsCardV1SelectionInput
    :: GoogleAppsCardV1SelectionInput
googleAppsCardV1SelectionInput =
  GoogleAppsCardV1SelectionInput'
    { _gacvsiItems = Nothing
    , _gacvsiName = Nothing
    , _gacvsiType = Nothing
    , _gacvsiLabel = Nothing
    , _gacvsiOnChangeAction = Nothing
    }


gacvsiItems :: Lens' GoogleAppsCardV1SelectionInput [GoogleAppsCardV1SelectionItem]
gacvsiItems
  = lens _gacvsiItems (\ s a -> s{_gacvsiItems = a}) .
      _Default
      . _Coerce

-- | The name of the text input which is used in formInput.
gacvsiName :: Lens' GoogleAppsCardV1SelectionInput (Maybe Text)
gacvsiName
  = lens _gacvsiName (\ s a -> s{_gacvsiName = a})

gacvsiType :: Lens' GoogleAppsCardV1SelectionInput (Maybe GoogleAppsCardV1SelectionInputType)
gacvsiType
  = lens _gacvsiType (\ s a -> s{_gacvsiType = a})

-- | The label displayed ahead of the switch control.
gacvsiLabel :: Lens' GoogleAppsCardV1SelectionInput (Maybe Text)
gacvsiLabel
  = lens _gacvsiLabel (\ s a -> s{_gacvsiLabel = a})

-- | If specified, the form is submitted when the selection changes. If not
-- specified, you must specify a separate button.
gacvsiOnChangeAction :: Lens' GoogleAppsCardV1SelectionInput (Maybe GoogleAppsCardV1Action)
gacvsiOnChangeAction
  = lens _gacvsiOnChangeAction
      (\ s a -> s{_gacvsiOnChangeAction = a})

instance FromJSON GoogleAppsCardV1SelectionInput
         where
        parseJSON
          = withObject "GoogleAppsCardV1SelectionInput"
              (\ o ->
                 GoogleAppsCardV1SelectionInput' <$>
                   (o .:? "items" .!= mempty) <*> (o .:? "name") <*>
                     (o .:? "type")
                     <*> (o .:? "label")
                     <*> (o .:? "onChangeAction"))

instance ToJSON GoogleAppsCardV1SelectionInput where
        toJSON GoogleAppsCardV1SelectionInput'{..}
          = object
              (catMaybes
                 [("items" .=) <$> _gacvsiItems,
                  ("name" .=) <$> _gacvsiName,
                  ("type" .=) <$> _gacvsiType,
                  ("label" .=) <$> _gacvsiLabel,
                  ("onChangeAction" .=) <$> _gacvsiOnChangeAction])

-- | A widget that displays text with optional decorations such as a label
-- above or below the text, an icon in front of the text, a selection
-- widget or a button after the text.
--
-- /See:/ 'googleAppsCardV1DecoratedText' smart constructor.
data GoogleAppsCardV1DecoratedText =
  GoogleAppsCardV1DecoratedText'
    { _gacvdtOnClick :: !(Maybe GoogleAppsCardV1OnClick)
    , _gacvdtTopLabel :: !(Maybe Text)
    , _gacvdtSwitchControl :: !(Maybe GoogleAppsCardV1SwitchControl)
    , _gacvdtText :: !(Maybe Text)
    , _gacvdtStartIcon :: !(Maybe GoogleAppsCardV1Icon)
    , _gacvdtIcon :: !(Maybe GoogleAppsCardV1Icon)
    , _gacvdtButton :: !(Maybe GoogleAppsCardV1Button)
    , _gacvdtEndIcon :: !(Maybe GoogleAppsCardV1Icon)
    , _gacvdtWrapText :: !(Maybe Bool)
    , _gacvdtBottomLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1DecoratedText' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvdtOnClick'
--
-- * 'gacvdtTopLabel'
--
-- * 'gacvdtSwitchControl'
--
-- * 'gacvdtText'
--
-- * 'gacvdtStartIcon'
--
-- * 'gacvdtIcon'
--
-- * 'gacvdtButton'
--
-- * 'gacvdtEndIcon'
--
-- * 'gacvdtWrapText'
--
-- * 'gacvdtBottomLabel'
googleAppsCardV1DecoratedText
    :: GoogleAppsCardV1DecoratedText
googleAppsCardV1DecoratedText =
  GoogleAppsCardV1DecoratedText'
    { _gacvdtOnClick = Nothing
    , _gacvdtTopLabel = Nothing
    , _gacvdtSwitchControl = Nothing
    , _gacvdtText = Nothing
    , _gacvdtStartIcon = Nothing
    , _gacvdtIcon = Nothing
    , _gacvdtButton = Nothing
    , _gacvdtEndIcon = Nothing
    , _gacvdtWrapText = Nothing
    , _gacvdtBottomLabel = Nothing
    }


-- | Only the top and bottom label and content region are clickable.
gacvdtOnClick :: Lens' GoogleAppsCardV1DecoratedText (Maybe GoogleAppsCardV1OnClick)
gacvdtOnClick
  = lens _gacvdtOnClick
      (\ s a -> s{_gacvdtOnClick = a})

-- | The formatted text label that shows above the main text.
gacvdtTopLabel :: Lens' GoogleAppsCardV1DecoratedText (Maybe Text)
gacvdtTopLabel
  = lens _gacvdtTopLabel
      (\ s a -> s{_gacvdtTopLabel = a})

-- | A switch widget can be clicked to change its state or trigger an action.
gacvdtSwitchControl :: Lens' GoogleAppsCardV1DecoratedText (Maybe GoogleAppsCardV1SwitchControl)
gacvdtSwitchControl
  = lens _gacvdtSwitchControl
      (\ s a -> s{_gacvdtSwitchControl = a})

-- | Required. The main widget formatted text. See Text formatting for
-- details.
gacvdtText :: Lens' GoogleAppsCardV1DecoratedText (Maybe Text)
gacvdtText
  = lens _gacvdtText (\ s a -> s{_gacvdtText = a})

-- | The icon displayed in front of the text.
gacvdtStartIcon :: Lens' GoogleAppsCardV1DecoratedText (Maybe GoogleAppsCardV1Icon)
gacvdtStartIcon
  = lens _gacvdtStartIcon
      (\ s a -> s{_gacvdtStartIcon = a})

-- | Deprecated in favor of start_icon.
gacvdtIcon :: Lens' GoogleAppsCardV1DecoratedText (Maybe GoogleAppsCardV1Icon)
gacvdtIcon
  = lens _gacvdtIcon (\ s a -> s{_gacvdtIcon = a})

-- | A button that can be clicked to trigger an action.
gacvdtButton :: Lens' GoogleAppsCardV1DecoratedText (Maybe GoogleAppsCardV1Button)
gacvdtButton
  = lens _gacvdtButton (\ s a -> s{_gacvdtButton = a})

-- | An icon displayed after the text.
gacvdtEndIcon :: Lens' GoogleAppsCardV1DecoratedText (Maybe GoogleAppsCardV1Icon)
gacvdtEndIcon
  = lens _gacvdtEndIcon
      (\ s a -> s{_gacvdtEndIcon = a})

-- | The wrap text setting. If \`true\`, the text is wrapped and displayed in
-- multiline. Otherwise, the text is truncated.
gacvdtWrapText :: Lens' GoogleAppsCardV1DecoratedText (Maybe Bool)
gacvdtWrapText
  = lens _gacvdtWrapText
      (\ s a -> s{_gacvdtWrapText = a})

-- | The formatted text label that shows below the main text.
gacvdtBottomLabel :: Lens' GoogleAppsCardV1DecoratedText (Maybe Text)
gacvdtBottomLabel
  = lens _gacvdtBottomLabel
      (\ s a -> s{_gacvdtBottomLabel = a})

instance FromJSON GoogleAppsCardV1DecoratedText where
        parseJSON
          = withObject "GoogleAppsCardV1DecoratedText"
              (\ o ->
                 GoogleAppsCardV1DecoratedText' <$>
                   (o .:? "onClick") <*> (o .:? "topLabel") <*>
                     (o .:? "switchControl")
                     <*> (o .:? "text")
                     <*> (o .:? "startIcon")
                     <*> (o .:? "icon")
                     <*> (o .:? "button")
                     <*> (o .:? "endIcon")
                     <*> (o .:? "wrapText")
                     <*> (o .:? "bottomLabel"))

instance ToJSON GoogleAppsCardV1DecoratedText where
        toJSON GoogleAppsCardV1DecoratedText'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _gacvdtOnClick,
                  ("topLabel" .=) <$> _gacvdtTopLabel,
                  ("switchControl" .=) <$> _gacvdtSwitchControl,
                  ("text" .=) <$> _gacvdtText,
                  ("startIcon" .=) <$> _gacvdtStartIcon,
                  ("icon" .=) <$> _gacvdtIcon,
                  ("button" .=) <$> _gacvdtButton,
                  ("endIcon" .=) <$> _gacvdtEndIcon,
                  ("wrapText" .=) <$> _gacvdtWrapText,
                  ("bottomLabel" .=) <$> _gacvdtBottomLabel])

-- | A suggestion item. Only supports text for now.
--
-- /See:/ 'googleAppsCardV1SuggestionItem' smart constructor.
newtype GoogleAppsCardV1SuggestionItem =
  GoogleAppsCardV1SuggestionItem'
    { _gacvsiText :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1SuggestionItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvsiText'
googleAppsCardV1SuggestionItem
    :: GoogleAppsCardV1SuggestionItem
googleAppsCardV1SuggestionItem =
  GoogleAppsCardV1SuggestionItem' {_gacvsiText = Nothing}


gacvsiText :: Lens' GoogleAppsCardV1SuggestionItem (Maybe Text)
gacvsiText
  = lens _gacvsiText (\ s a -> s{_gacvsiText = a})

instance FromJSON GoogleAppsCardV1SuggestionItem
         where
        parseJSON
          = withObject "GoogleAppsCardV1SuggestionItem"
              (\ o ->
                 GoogleAppsCardV1SuggestionItem' <$> (o .:? "text"))

instance ToJSON GoogleAppsCardV1SuggestionItem where
        toJSON GoogleAppsCardV1SuggestionItem'{..}
          = object (catMaybes [("text" .=) <$> _gacvsiText])

-- | A divider that appears in between widgets.
--
-- /See:/ 'googleAppsCardV1Divider' smart constructor.
data GoogleAppsCardV1Divider =
  GoogleAppsCardV1Divider'
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Divider' with the minimum fields required to make a request.
--
googleAppsCardV1Divider
    :: GoogleAppsCardV1Divider
googleAppsCardV1Divider = GoogleAppsCardV1Divider'


instance FromJSON GoogleAppsCardV1Divider where
        parseJSON
          = withObject "GoogleAppsCardV1Divider"
              (\ o -> pure GoogleAppsCardV1Divider')

instance ToJSON GoogleAppsCardV1Divider where
        toJSON = const emptyObject

-- | A section contains a collection of widgets that are rendered vertically
-- in the order that they are specified. Across all platforms, cards have a
-- narrow fixed width, so there is currently no need for layout properties,
-- for example, float.
--
-- /See:/ 'googleAppsCardV1Section' smart constructor.
data GoogleAppsCardV1Section =
  GoogleAppsCardV1Section'
    { _gacvsCollapsible :: !(Maybe Bool)
    , _gacvsUncollapsibleWidgetsCount :: !(Maybe (Textual Int32))
    , _gacvsWidgets :: !(Maybe [GoogleAppsCardV1Widget])
    , _gacvsHeader :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Section' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvsCollapsible'
--
-- * 'gacvsUncollapsibleWidgetsCount'
--
-- * 'gacvsWidgets'
--
-- * 'gacvsHeader'
googleAppsCardV1Section
    :: GoogleAppsCardV1Section
googleAppsCardV1Section =
  GoogleAppsCardV1Section'
    { _gacvsCollapsible = Nothing
    , _gacvsUncollapsibleWidgetsCount = Nothing
    , _gacvsWidgets = Nothing
    , _gacvsHeader = Nothing
    }


-- | Indicates whether this section is collapsible. If a section is
-- collapsible, the description must be given.
gacvsCollapsible :: Lens' GoogleAppsCardV1Section (Maybe Bool)
gacvsCollapsible
  = lens _gacvsCollapsible
      (\ s a -> s{_gacvsCollapsible = a})

-- | The number of uncollapsible widgets. For example, when a section
-- contains five widgets and the \`numUncollapsibleWidget\` is set to
-- \`2\`, the first two widgets are always shown and the last three are
-- collapsed as default. The \`numUncollapsibleWidget\` is taken into
-- account only when collapsible is set to \`true\`.
gacvsUncollapsibleWidgetsCount :: Lens' GoogleAppsCardV1Section (Maybe Int32)
gacvsUncollapsibleWidgetsCount
  = lens _gacvsUncollapsibleWidgetsCount
      (\ s a -> s{_gacvsUncollapsibleWidgetsCount = a})
      . mapping _Coerce

-- | A section must contain at least 1 widget.
gacvsWidgets :: Lens' GoogleAppsCardV1Section [GoogleAppsCardV1Widget]
gacvsWidgets
  = lens _gacvsWidgets (\ s a -> s{_gacvsWidgets = a})
      . _Default
      . _Coerce

-- | The header of the section. Formatted text is supported.
gacvsHeader :: Lens' GoogleAppsCardV1Section (Maybe Text)
gacvsHeader
  = lens _gacvsHeader (\ s a -> s{_gacvsHeader = a})

instance FromJSON GoogleAppsCardV1Section where
        parseJSON
          = withObject "GoogleAppsCardV1Section"
              (\ o ->
                 GoogleAppsCardV1Section' <$>
                   (o .:? "collapsible") <*>
                     (o .:? "uncollapsibleWidgetsCount")
                     <*> (o .:? "widgets" .!= mempty)
                     <*> (o .:? "header"))

instance ToJSON GoogleAppsCardV1Section where
        toJSON GoogleAppsCardV1Section'{..}
          = object
              (catMaybes
                 [("collapsible" .=) <$> _gacvsCollapsible,
                  ("uncollapsibleWidgetsCount" .=) <$>
                    _gacvsUncollapsibleWidgetsCount,
                  ("widgets" .=) <$> _gacvsWidgets,
                  ("header" .=) <$> _gacvsHeader])

-- | An attachment in Hangouts Chat.
--
-- /See:/ 'attachment' smart constructor.
data Attachment =
  Attachment'
    { _aDownloadURI :: !(Maybe Text)
    , _aAttachmentDataRef :: !(Maybe AttachmentDataRef)
    , _aContentName :: !(Maybe Text)
    , _aName :: !(Maybe Text)
    , _aThumbnailURI :: !(Maybe Text)
    , _aSource :: !(Maybe AttachmentSource)
    , _aDriveDataRef :: !(Maybe DriveDataRef)
    , _aContentType :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Attachment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aDownloadURI'
--
-- * 'aAttachmentDataRef'
--
-- * 'aContentName'
--
-- * 'aName'
--
-- * 'aThumbnailURI'
--
-- * 'aSource'
--
-- * 'aDriveDataRef'
--
-- * 'aContentType'
attachment
    :: Attachment
attachment =
  Attachment'
    { _aDownloadURI = Nothing
    , _aAttachmentDataRef = Nothing
    , _aContentName = Nothing
    , _aName = Nothing
    , _aThumbnailURI = Nothing
    , _aSource = Nothing
    , _aDriveDataRef = Nothing
    , _aContentType = Nothing
    }


-- | Output only. The download URL which should be used to allow a human user
-- to download the attachment. Bots should not use this URL to download
-- attachment content.
aDownloadURI :: Lens' Attachment (Maybe Text)
aDownloadURI
  = lens _aDownloadURI (\ s a -> s{_aDownloadURI = a})

-- | A reference to the attachment data. This is used with the media API to
-- download the attachment data.
aAttachmentDataRef :: Lens' Attachment (Maybe AttachmentDataRef)
aAttachmentDataRef
  = lens _aAttachmentDataRef
      (\ s a -> s{_aAttachmentDataRef = a})

-- | The original file name for the content, not the full path.
aContentName :: Lens' Attachment (Maybe Text)
aContentName
  = lens _aContentName (\ s a -> s{_aContentName = a})

-- | Resource name of the attachment, in the form
-- \"spaces\/*\/messages\/*\/attachments\/*\".
aName :: Lens' Attachment (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | Output only. The thumbnail URL which should be used to preview the
-- attachment to a human user. Bots should not use this URL to download
-- attachment content.
aThumbnailURI :: Lens' Attachment (Maybe Text)
aThumbnailURI
  = lens _aThumbnailURI
      (\ s a -> s{_aThumbnailURI = a})

-- | The source of the attachment.
aSource :: Lens' Attachment (Maybe AttachmentSource)
aSource = lens _aSource (\ s a -> s{_aSource = a})

-- | A reference to the drive attachment. This is used with the Drive API.
aDriveDataRef :: Lens' Attachment (Maybe DriveDataRef)
aDriveDataRef
  = lens _aDriveDataRef
      (\ s a -> s{_aDriveDataRef = a})

-- | The content type (MIME type) of the file.
aContentType :: Lens' Attachment (Maybe Text)
aContentType
  = lens _aContentType (\ s a -> s{_aContentType = a})

instance FromJSON Attachment where
        parseJSON
          = withObject "Attachment"
              (\ o ->
                 Attachment' <$>
                   (o .:? "downloadUri") <*> (o .:? "attachmentDataRef")
                     <*> (o .:? "contentName")
                     <*> (o .:? "name")
                     <*> (o .:? "thumbnailUri")
                     <*> (o .:? "source")
                     <*> (o .:? "driveDataRef")
                     <*> (o .:? "contentType"))

instance ToJSON Attachment where
        toJSON Attachment'{..}
          = object
              (catMaybes
                 [("downloadUri" .=) <$> _aDownloadURI,
                  ("attachmentDataRef" .=) <$> _aAttachmentDataRef,
                  ("contentName" .=) <$> _aContentName,
                  ("name" .=) <$> _aName,
                  ("thumbnailUri" .=) <$> _aThumbnailURI,
                  ("source" .=) <$> _aSource,
                  ("driveDataRef" .=) <$> _aDriveDataRef,
                  ("contentType" .=) <$> _aContentType])

-- | A user in Google Chat.
--
-- /See:/ 'user' smart constructor.
data User =
  User'
    { _uIsAnonymous :: !(Maybe Bool)
    , _uName :: !(Maybe Text)
    , _uDisplayName :: !(Maybe Text)
    , _uDomainId :: !(Maybe Text)
    , _uType :: !(Maybe UserType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'User' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uIsAnonymous'
--
-- * 'uName'
--
-- * 'uDisplayName'
--
-- * 'uDomainId'
--
-- * 'uType'
user
    :: User
user =
  User'
    { _uIsAnonymous = Nothing
    , _uName = Nothing
    , _uDisplayName = Nothing
    , _uDomainId = Nothing
    , _uType = Nothing
    }


-- | True when the user is deleted or the user\'s profile is not visible.
uIsAnonymous :: Lens' User (Maybe Bool)
uIsAnonymous
  = lens _uIsAnonymous (\ s a -> s{_uIsAnonymous = a})

-- | Resource name, in the format \"users\/*\".
uName :: Lens' User (Maybe Text)
uName = lens _uName (\ s a -> s{_uName = a})

-- | The user\'s display name.
uDisplayName :: Lens' User (Maybe Text)
uDisplayName
  = lens _uDisplayName (\ s a -> s{_uDisplayName = a})

-- | Obfuscated domain information.
uDomainId :: Lens' User (Maybe Text)
uDomainId
  = lens _uDomainId (\ s a -> s{_uDomainId = a})

-- | User type.
uType :: Lens' User (Maybe UserType)
uType = lens _uType (\ s a -> s{_uType = a})

instance FromJSON User where
        parseJSON
          = withObject "User"
              (\ o ->
                 User' <$>
                   (o .:? "isAnonymous") <*> (o .:? "name") <*>
                     (o .:? "displayName")
                     <*> (o .:? "domainId")
                     <*> (o .:? "type"))

instance ToJSON User where
        toJSON User'{..}
          = object
              (catMaybes
                 [("isAnonymous" .=) <$> _uIsAnonymous,
                  ("name" .=) <$> _uName,
                  ("displayName" .=) <$> _uDisplayName,
                  ("domainId" .=) <$> _uDomainId,
                  ("type" .=) <$> _uType])

-- | Media resource.
--
-- /See:/ 'media' smart constructor.
newtype Media =
  Media'
    { _mResourceName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Media' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mResourceName'
media
    :: Media
media = Media' {_mResourceName = Nothing}


-- | Name of the media resource.
mResourceName :: Lens' Media (Maybe Text)
mResourceName
  = lens _mResourceName
      (\ s a -> s{_mResourceName = a})

instance FromJSON Media where
        parseJSON
          = withObject "Media"
              (\ o -> Media' <$> (o .:? "resourceName"))

instance ToJSON Media where
        toJSON Media'{..}
          = object
              (catMaybes [("resourceName" .=) <$> _mResourceName])

-- | A card is a UI element that can contain UI widgets such as text and
-- images. For more information, see Cards . For example, the following
-- JSON creates a card that has a header with the name, position, icons,
-- and link for a contact, followed by a section with contact information
-- like email and phone number. \`\`\` { \"header\": { \"title\": \"Heba
-- Salam\", \"subtitle\": \"Software Engineer\", \"imageStyle\":
-- \"ImageStyle.AVATAR\", \"imageUrl\":
-- \"https:\/\/example.com\/heba_salam.png\", \"imageAltText\": \"Avatar
-- for Heba Salam\" }, \"sections\" : [ { \"header\": \"Contact Info\",
-- \"widgets\": [ { \"decorated_text\": { \"icon\": { \"knownIcon\":
-- \"EMAIL\" }, \"content\": \"heba.salam\'example.com\" } }, {
-- \"decoratedText\": { \"icon\": { \"knownIcon\": \"PERSON\" },
-- \"content\": \"Online\" } }, { \"decoratedText\": { \"icon\": {
-- \"knownIcon\": \"PHONE\" }, \"content\": \"+1 (555) 555-1234\" } }, {
-- \"buttons\": [ { \"textButton\": { \"text\": \"Share\", }, \"onClick\":
-- { \"openLink\": { \"url\": \"https:\/\/example.com\/share\" } } }, {
-- \"textButton\": { \"text\": \"Edit\", }, \"onClick\": { \"action\": {
-- \"function\": \"goToView\", \"parameters\": [ { \"key\": \"viewType\",
-- \"value\": \"EDIT\" } ], \"loadIndicator\": \"LoadIndicator.SPINNER\" }
-- } } ] } ], \"collapsible\": true, \"uncollapsibleWidgetsCount\": 3 } ],
-- \"cardActions\": [ { \"actionLabel\": \"Send Feedback\", \"onClick\": {
-- \"openLink\": { \"url\": \"https:\/\/example.com\/feedback\" } } } ],
-- \"name\": \"contact-card-K3wB6arF2H9L\" } \`\`\`
--
-- /See:/ 'googleAppsCardV1Card' smart constructor.
data GoogleAppsCardV1Card =
  GoogleAppsCardV1Card'
    { _gacvcDisplayStyle :: !(Maybe GoogleAppsCardV1CardDisplayStyle)
    , _gacvcPeekCardHeader :: !(Maybe GoogleAppsCardV1CardHeader)
    , _gacvcCardActions :: !(Maybe [GoogleAppsCardV1CardAction])
    , _gacvcName :: !(Maybe Text)
    , _gacvcHeader :: !(Maybe GoogleAppsCardV1CardHeader)
    , _gacvcSections :: !(Maybe [GoogleAppsCardV1Section])
    , _gacvcFixedFooter :: !(Maybe GoogleAppsCardV1CardFixedFooter)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Card' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvcDisplayStyle'
--
-- * 'gacvcPeekCardHeader'
--
-- * 'gacvcCardActions'
--
-- * 'gacvcName'
--
-- * 'gacvcHeader'
--
-- * 'gacvcSections'
--
-- * 'gacvcFixedFooter'
googleAppsCardV1Card
    :: GoogleAppsCardV1Card
googleAppsCardV1Card =
  GoogleAppsCardV1Card'
    { _gacvcDisplayStyle = Nothing
    , _gacvcPeekCardHeader = Nothing
    , _gacvcCardActions = Nothing
    , _gacvcName = Nothing
    , _gacvcHeader = Nothing
    , _gacvcSections = Nothing
    , _gacvcFixedFooter = Nothing
    }


-- | The display style for peekCardHeader.
gacvcDisplayStyle :: Lens' GoogleAppsCardV1Card (Maybe GoogleAppsCardV1CardDisplayStyle)
gacvcDisplayStyle
  = lens _gacvcDisplayStyle
      (\ s a -> s{_gacvcDisplayStyle = a})

-- | When displaying contextual content, the peek card header acts as a
-- placeholder so that the user can navigate forward between the homepage
-- cards and the contextual cards.
gacvcPeekCardHeader :: Lens' GoogleAppsCardV1Card (Maybe GoogleAppsCardV1CardHeader)
gacvcPeekCardHeader
  = lens _gacvcPeekCardHeader
      (\ s a -> s{_gacvcPeekCardHeader = a})

-- | The actions of this card. They are added to a card\'s generated toolbar
-- menu. For example, the following JSON constructs a card action menu with
-- Settings and Send Feedback options: \`\`\` \"card_actions\": [ {
-- \"actionLabel\": \"Setting\", \"onClick\": { \"action\": {
-- \"functionName\": \"goToView\", \"parameters\": [ { \"key\":
-- \"viewType\", \"value\": \"SETTING\" } ], \"loadIndicator\":
-- \"LoadIndicator.SPINNER\" } } }, { \"actionLabel\": \"Send Feedback\",
-- \"onClick\": { \"openLink\": { \"url\":
-- \"https:\/\/example.com\/feedback\" } } } ] \`\`\`
gacvcCardActions :: Lens' GoogleAppsCardV1Card [GoogleAppsCardV1CardAction]
gacvcCardActions
  = lens _gacvcCardActions
      (\ s a -> s{_gacvcCardActions = a})
      . _Default
      . _Coerce

-- | Name of the card, which is used as a identifier for the card in card
-- navigation.
gacvcName :: Lens' GoogleAppsCardV1Card (Maybe Text)
gacvcName
  = lens _gacvcName (\ s a -> s{_gacvcName = a})

-- | The header of the card. A header usually contains a title and an image.
gacvcHeader :: Lens' GoogleAppsCardV1Card (Maybe GoogleAppsCardV1CardHeader)
gacvcHeader
  = lens _gacvcHeader (\ s a -> s{_gacvcHeader = a})

-- | Sections are separated by a line divider.
gacvcSections :: Lens' GoogleAppsCardV1Card [GoogleAppsCardV1Section]
gacvcSections
  = lens _gacvcSections
      (\ s a -> s{_gacvcSections = a})
      . _Default
      . _Coerce

-- | The fixed footer shown at the bottom of this card.
gacvcFixedFooter :: Lens' GoogleAppsCardV1Card (Maybe GoogleAppsCardV1CardFixedFooter)
gacvcFixedFooter
  = lens _gacvcFixedFooter
      (\ s a -> s{_gacvcFixedFooter = a})

instance FromJSON GoogleAppsCardV1Card where
        parseJSON
          = withObject "GoogleAppsCardV1Card"
              (\ o ->
                 GoogleAppsCardV1Card' <$>
                   (o .:? "displayStyle") <*> (o .:? "peekCardHeader")
                     <*> (o .:? "cardActions" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "header")
                     <*> (o .:? "sections" .!= mempty)
                     <*> (o .:? "fixedFooter"))

instance ToJSON GoogleAppsCardV1Card where
        toJSON GoogleAppsCardV1Card'{..}
          = object
              (catMaybes
                 [("displayStyle" .=) <$> _gacvcDisplayStyle,
                  ("peekCardHeader" .=) <$> _gacvcPeekCardHeader,
                  ("cardActions" .=) <$> _gacvcCardActions,
                  ("name" .=) <$> _gacvcName,
                  ("header" .=) <$> _gacvcHeader,
                  ("sections" .=) <$> _gacvcSections,
                  ("fixedFooter" .=) <$> _gacvcFixedFooter])

-- | A widget is a UI element that presents texts, images, etc.
--
-- /See:/ 'googleAppsCardV1Widget' smart constructor.
data GoogleAppsCardV1Widget =
  GoogleAppsCardV1Widget'
    { _gacvwImage :: !(Maybe GoogleAppsCardV1Image)
    , _gacvwTextInput :: !(Maybe GoogleAppsCardV1TextInput)
    , _gacvwTextParagraph :: !(Maybe GoogleAppsCardV1TextParagraph)
    , _gacvwButtonList :: !(Maybe GoogleAppsCardV1ButtonList)
    , _gacvwDateTimePicker :: !(Maybe GoogleAppsCardV1DateTimePicker)
    , _gacvwGrid :: !(Maybe GoogleAppsCardV1Grid)
    , _gacvwSelectionInput :: !(Maybe GoogleAppsCardV1SelectionInput)
    , _gacvwDecoratedText :: !(Maybe GoogleAppsCardV1DecoratedText)
    , _gacvwHorizontalAlignment :: !(Maybe GoogleAppsCardV1WidgetHorizontalAlignment)
    , _gacvwDivider :: !(Maybe GoogleAppsCardV1Divider)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Widget' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvwImage'
--
-- * 'gacvwTextInput'
--
-- * 'gacvwTextParagraph'
--
-- * 'gacvwButtonList'
--
-- * 'gacvwDateTimePicker'
--
-- * 'gacvwGrid'
--
-- * 'gacvwSelectionInput'
--
-- * 'gacvwDecoratedText'
--
-- * 'gacvwHorizontalAlignment'
--
-- * 'gacvwDivider'
googleAppsCardV1Widget
    :: GoogleAppsCardV1Widget
googleAppsCardV1Widget =
  GoogleAppsCardV1Widget'
    { _gacvwImage = Nothing
    , _gacvwTextInput = Nothing
    , _gacvwTextParagraph = Nothing
    , _gacvwButtonList = Nothing
    , _gacvwDateTimePicker = Nothing
    , _gacvwGrid = Nothing
    , _gacvwSelectionInput = Nothing
    , _gacvwDecoratedText = Nothing
    , _gacvwHorizontalAlignment = Nothing
    , _gacvwDivider = Nothing
    }


-- | Displays an image in this widget. For example, the following JSON
-- creates an image with alternative text: \`\`\` \"image\": {
-- \"imageUrl\": \"https:\/\/example.com\/heba_salam.png\" \"altText\":
-- \"Avatar for Heba Salam\" } \`\`\`
gacvwImage :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1Image)
gacvwImage
  = lens _gacvwImage (\ s a -> s{_gacvwImage = a})

-- | Displays a text input in this widget. For example, the following JSON
-- creates a text input for mail address: \`\`\` \"textInput\": { \"name\":
-- \"mailing_address\", \"label\": \"Mailing Address\" } \`\`\` As another
-- example, the following JSON creates a text input for programming
-- language with static suggestions: \`\`\` \"textInput\": { \"name\":
-- \"preferred_programing_language\", \"label\": \"Preferred Language\",
-- \"initialSuggestions\": { \"items\": [ { \"text\": \"C++\" }, {
-- \"text\": \"Java\" }, { \"text\": \"JavaScript\" }, { \"text\":
-- \"Python\" } ] } } \`\`\`
gacvwTextInput :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1TextInput)
gacvwTextInput
  = lens _gacvwTextInput
      (\ s a -> s{_gacvwTextInput = a})

-- | Displays a text paragraph in this widget. For example, the following
-- JSON creates a bolded text: \`\`\` \"textParagraph\": { \"text\": \"
-- *bold text*\" } \`\`\`
gacvwTextParagraph :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1TextParagraph)
gacvwTextParagraph
  = lens _gacvwTextParagraph
      (\ s a -> s{_gacvwTextParagraph = a})

-- | A list of buttons. For example, the following JSON creates two buttons.
-- The first is a filled text button and the second is an image button that
-- opens a link: \`\`\` \"buttonList\": { \"buttons\": [ \"button\": {
-- \"text\": \"Edit\", \"Color\": { \"Red\": 255 \"Green\": 255 \"Blue\":
-- 255 } \"disabled\": true }, \"button\": { \"icon\": { \"knownIcon\":
-- \"INVITE\" \"altText\": \"check calendar\" }, \"onClick\": {
-- \"openLink\": { \"url\": \"https:\/\/example.com\/calendar\" } } }, ] }
-- \`\`\`
gacvwButtonList :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1ButtonList)
gacvwButtonList
  = lens _gacvwButtonList
      (\ s a -> s{_gacvwButtonList = a})

-- | Displays a selection\/input widget for date\/time. For example, the
-- following JSON creates a date\/time picker for an appointment time:
-- \`\`\` \"date_time_picker\": { \"name\": \"appointment_time\",
-- \"label\": \"Book your appointment at:\", \"type\":
-- \"DateTimePickerType.DATE_AND_TIME\", \"valueMsEpoch\": \"796435200000\"
-- } \`\`\`
gacvwDateTimePicker :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1DateTimePicker)
gacvwDateTimePicker
  = lens _gacvwDateTimePicker
      (\ s a -> s{_gacvwDateTimePicker = a})

-- | Displays a grid with a collection of items. For example, the following
-- JSON creates a 2 column grid with a single item: \`\`\` \"grid\": {
-- \"title\": \"A fine collection of items\", \"numColumns\": 2,
-- \"borderStyle\": { \"type\": \"STROKE\", \"cornerRadius\": 4.0 },
-- \"items\": [ \"image\": { \"imageUri\":
-- \"https:\/\/www.example.com\/image.png\", \"cropStyle\": { \"type\":
-- \"SQUARE\" }, \"borderStyle\": { \"type\": \"STROKE\" } }, \"title\":
-- \"An item\", \"textAlignment\": \"CENTER\" ], \"onClick\": {
-- \"openLink\": { \"url\":\"https:\/\/www.example.com\" } } } \`\`\`
gacvwGrid :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1Grid)
gacvwGrid
  = lens _gacvwGrid (\ s a -> s{_gacvwGrid = a})

-- | Displays a switch control in this widget. For example, the following
-- JSON creates a dropdown selection for size: \`\`\` \"switchControl\": {
-- \"name\": \"size\", \"label\": \"Size\" \"type\":
-- \"SelectionType.DROPDOWN\", \"items\": [ { \"text\": \"S\", \"value\":
-- \"small\", \"selected\": false }, { \"text\": \"M\", \"value\":
-- \"medium\", \"selected\": true }, { \"text\": \"L\", \"value\":
-- \"large\", \"selected\": false }, { \"text\": \"XL\", \"value\":
-- \"extra_large\", \"selected\": false } ] } \`\`\`
gacvwSelectionInput :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1SelectionInput)
gacvwSelectionInput
  = lens _gacvwSelectionInput
      (\ s a -> s{_gacvwSelectionInput = a})

-- | Displays a decorated text item in this widget. For example, the
-- following JSON creates a decorated text widget showing email address:
-- \`\`\` \"decoratedText\": { \"icon\": { \"knownIcon\": \"EMAIL\" },
-- \"topLabel\": \"Email Address\", \"content\":
-- \"heba.salam\'example.com\", \"bottomLabel\": \"This is a new Email
-- address!\", \"switchWidget\": { \"name\":
-- \"has_send_welcome_email_to_heba_salam\", \"selected\": false,
-- \"controlType\": \"ControlType.CHECKBOX\" } } \`\`\`
gacvwDecoratedText :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1DecoratedText)
gacvwDecoratedText
  = lens _gacvwDecoratedText
      (\ s a -> s{_gacvwDecoratedText = a})

-- | The horizontal alignment of this widget.
gacvwHorizontalAlignment :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1WidgetHorizontalAlignment)
gacvwHorizontalAlignment
  = lens _gacvwHorizontalAlignment
      (\ s a -> s{_gacvwHorizontalAlignment = a})

-- | Displays a divider. For example, the following JSON creates a divider:
-- \`\`\` \"divider\": { } \`\`\`
gacvwDivider :: Lens' GoogleAppsCardV1Widget (Maybe GoogleAppsCardV1Divider)
gacvwDivider
  = lens _gacvwDivider (\ s a -> s{_gacvwDivider = a})

instance FromJSON GoogleAppsCardV1Widget where
        parseJSON
          = withObject "GoogleAppsCardV1Widget"
              (\ o ->
                 GoogleAppsCardV1Widget' <$>
                   (o .:? "image") <*> (o .:? "textInput") <*>
                     (o .:? "textParagraph")
                     <*> (o .:? "buttonList")
                     <*> (o .:? "dateTimePicker")
                     <*> (o .:? "grid")
                     <*> (o .:? "selectionInput")
                     <*> (o .:? "decoratedText")
                     <*> (o .:? "horizontalAlignment")
                     <*> (o .:? "divider"))

instance ToJSON GoogleAppsCardV1Widget where
        toJSON GoogleAppsCardV1Widget'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gacvwImage,
                  ("textInput" .=) <$> _gacvwTextInput,
                  ("textParagraph" .=) <$> _gacvwTextParagraph,
                  ("buttonList" .=) <$> _gacvwButtonList,
                  ("dateTimePicker" .=) <$> _gacvwDateTimePicker,
                  ("grid" .=) <$> _gacvwGrid,
                  ("selectionInput" .=) <$> _gacvwSelectionInput,
                  ("decoratedText" .=) <$> _gacvwDecoratedText,
                  ("horizontalAlignment" .=) <$>
                    _gacvwHorizontalAlignment,
                  ("divider" .=) <$> _gacvwDivider])

-- | A link that opens a new window.
--
-- /See:/ 'openLink' smart constructor.
newtype OpenLink =
  OpenLink'
    { _olURL :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'OpenLink' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'olURL'
openLink
    :: OpenLink
openLink = OpenLink' {_olURL = Nothing}


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

-- | List of string parameters to supply when the action method is invoked.
-- For example, consider three snooze buttons: snooze now, snooze 1 day,
-- snooze next week. You might use action method = snooze(), passing the
-- snooze type and snooze time in the list of string parameters.
--
-- /See:/ 'googleAppsCardV1ActionParameter' smart constructor.
data GoogleAppsCardV1ActionParameter =
  GoogleAppsCardV1ActionParameter'
    { _gacvapValue :: !(Maybe Text)
    , _gacvapKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1ActionParameter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvapValue'
--
-- * 'gacvapKey'
googleAppsCardV1ActionParameter
    :: GoogleAppsCardV1ActionParameter
googleAppsCardV1ActionParameter =
  GoogleAppsCardV1ActionParameter'
    {_gacvapValue = Nothing, _gacvapKey = Nothing}


-- | The value of the parameter.
gacvapValue :: Lens' GoogleAppsCardV1ActionParameter (Maybe Text)
gacvapValue
  = lens _gacvapValue (\ s a -> s{_gacvapValue = a})

-- | The name of the parameter for the action script.
gacvapKey :: Lens' GoogleAppsCardV1ActionParameter (Maybe Text)
gacvapKey
  = lens _gacvapKey (\ s a -> s{_gacvapKey = a})

instance FromJSON GoogleAppsCardV1ActionParameter
         where
        parseJSON
          = withObject "GoogleAppsCardV1ActionParameter"
              (\ o ->
                 GoogleAppsCardV1ActionParameter' <$>
                   (o .:? "value") <*> (o .:? "key"))

instance ToJSON GoogleAppsCardV1ActionParameter where
        toJSON GoogleAppsCardV1ActionParameter'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gacvapValue,
                  ("key" .=) <$> _gacvapKey])

-- | An image that is specified by a URL and can have an onClick action.
--
-- /See:/ 'googleAppsCardV1Image' smart constructor.
data GoogleAppsCardV1Image =
  GoogleAppsCardV1Image'
    { _gacviOnClick :: !(Maybe GoogleAppsCardV1OnClick)
    , _gacviAltText :: !(Maybe Text)
    , _gacviImageURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Image' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacviOnClick'
--
-- * 'gacviAltText'
--
-- * 'gacviImageURL'
googleAppsCardV1Image
    :: GoogleAppsCardV1Image
googleAppsCardV1Image =
  GoogleAppsCardV1Image'
    {_gacviOnClick = Nothing, _gacviAltText = Nothing, _gacviImageURL = Nothing}


gacviOnClick :: Lens' GoogleAppsCardV1Image (Maybe GoogleAppsCardV1OnClick)
gacviOnClick
  = lens _gacviOnClick (\ s a -> s{_gacviOnClick = a})

-- | The alternative text of this image, used for accessibility.
gacviAltText :: Lens' GoogleAppsCardV1Image (Maybe Text)
gacviAltText
  = lens _gacviAltText (\ s a -> s{_gacviAltText = a})

-- | An image URL.
gacviImageURL :: Lens' GoogleAppsCardV1Image (Maybe Text)
gacviImageURL
  = lens _gacviImageURL
      (\ s a -> s{_gacviImageURL = a})

instance FromJSON GoogleAppsCardV1Image where
        parseJSON
          = withObject "GoogleAppsCardV1Image"
              (\ o ->
                 GoogleAppsCardV1Image' <$>
                   (o .:? "onClick") <*> (o .:? "altText") <*>
                     (o .:? "imageUrl"))

instance ToJSON GoogleAppsCardV1Image where
        toJSON GoogleAppsCardV1Image'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _gacviOnClick,
                  ("altText" .=) <$> _gacviAltText,
                  ("imageUrl" .=) <$> _gacviImageURL])

--
-- /See:/ 'googleAppsCardV1OnClick' smart constructor.
data GoogleAppsCardV1OnClick =
  GoogleAppsCardV1OnClick'
    { _gacvocCard :: !(Maybe GoogleAppsCardV1Card)
    , _gacvocOpenDynamicLinkAction :: !(Maybe GoogleAppsCardV1Action)
    , _gacvocAction :: !(Maybe GoogleAppsCardV1Action)
    , _gacvocOpenLink :: !(Maybe GoogleAppsCardV1OpenLink)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1OnClick' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvocCard'
--
-- * 'gacvocOpenDynamicLinkAction'
--
-- * 'gacvocAction'
--
-- * 'gacvocOpenLink'
googleAppsCardV1OnClick
    :: GoogleAppsCardV1OnClick
googleAppsCardV1OnClick =
  GoogleAppsCardV1OnClick'
    { _gacvocCard = Nothing
    , _gacvocOpenDynamicLinkAction = Nothing
    , _gacvocAction = Nothing
    , _gacvocOpenLink = Nothing
    }


-- | A new card is pushed to the card stack after clicking if specified.
gacvocCard :: Lens' GoogleAppsCardV1OnClick (Maybe GoogleAppsCardV1Card)
gacvocCard
  = lens _gacvocCard (\ s a -> s{_gacvocCard = a})

-- | An add-on triggers this action when the action needs to open a link.
-- This differs from the open_link above in that this needs to talk to
-- server to get the link. Thus some preparation work is required for web
-- client to do before the open link action response comes back.
gacvocOpenDynamicLinkAction :: Lens' GoogleAppsCardV1OnClick (Maybe GoogleAppsCardV1Action)
gacvocOpenDynamicLinkAction
  = lens _gacvocOpenDynamicLinkAction
      (\ s a -> s{_gacvocOpenDynamicLinkAction = a})

-- | If specified, an action is triggered by this onClick.
gacvocAction :: Lens' GoogleAppsCardV1OnClick (Maybe GoogleAppsCardV1Action)
gacvocAction
  = lens _gacvocAction (\ s a -> s{_gacvocAction = a})

-- | If specified, this onClick triggers an open link action.
gacvocOpenLink :: Lens' GoogleAppsCardV1OnClick (Maybe GoogleAppsCardV1OpenLink)
gacvocOpenLink
  = lens _gacvocOpenLink
      (\ s a -> s{_gacvocOpenLink = a})

instance FromJSON GoogleAppsCardV1OnClick where
        parseJSON
          = withObject "GoogleAppsCardV1OnClick"
              (\ o ->
                 GoogleAppsCardV1OnClick' <$>
                   (o .:? "card") <*> (o .:? "openDynamicLinkAction")
                     <*> (o .:? "action")
                     <*> (o .:? "openLink"))

instance ToJSON GoogleAppsCardV1OnClick where
        toJSON GoogleAppsCardV1OnClick'{..}
          = object
              (catMaybes
                 [("card" .=) <$> _gacvocCard,
                  ("openDynamicLinkAction" .=) <$>
                    _gacvocOpenDynamicLinkAction,
                  ("action" .=) <$> _gacvocAction,
                  ("openLink" .=) <$> _gacvocOpenLink])

-- | A Slash Command in Chat.
--
-- /See:/ 'slashCommand' smart constructor.
newtype SlashCommand =
  SlashCommand'
    { _scCommandId :: Maybe (Textual Int64)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SlashCommand' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'scCommandId'
slashCommand
    :: SlashCommand
slashCommand = SlashCommand' {_scCommandId = Nothing}


-- | The id of the slash command invoked.
scCommandId :: Lens' SlashCommand (Maybe Int64)
scCommandId
  = lens _scCommandId (\ s a -> s{_scCommandId = a}) .
      mapping _Coerce

instance FromJSON SlashCommand where
        parseJSON
          = withObject "SlashCommand"
              (\ o -> SlashCommand' <$> (o .:? "commandId"))

instance ToJSON SlashCommand where
        toJSON SlashCommand'{..}
          = object
              (catMaybes [("commandId" .=) <$> _scCommandId])

-- | A card action is the action associated with the card. For an invoice
-- card, a typical action would be: delete invoice, email invoice or open
-- the invoice in browser.
--
-- /See:/ 'cardAction' smart constructor.
data CardAction =
  CardAction'
    { _caOnClick :: !(Maybe OnClick)
    , _caActionLabel :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CardAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caOnClick'
--
-- * 'caActionLabel'
cardAction
    :: CardAction
cardAction = CardAction' {_caOnClick = Nothing, _caActionLabel = Nothing}


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

-- | ActionStatus represents status of a request from the bot developer\'s
-- side. In specific, for each request a bot gets, the bot developer will
-- set both fields below in relation to what the response status and
-- message related to status should be.
--
-- /See:/ 'actionStatus' smart constructor.
data ActionStatus =
  ActionStatus'
    { _asUserFacingMessage :: !(Maybe Text)
    , _asStatusCode :: !(Maybe ActionStatusStatusCode)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionStatus' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asUserFacingMessage'
--
-- * 'asStatusCode'
actionStatus
    :: ActionStatus
actionStatus =
  ActionStatus' {_asUserFacingMessage = Nothing, _asStatusCode = Nothing}


-- | This message will be the corresponding string to the above status_code.
-- If unset, an appropriate generic message based on the status_code will
-- be shown to the user. If this field is set then the message will be
-- surfaced to the user for both successes and errors.
asUserFacingMessage :: Lens' ActionStatus (Maybe Text)
asUserFacingMessage
  = lens _asUserFacingMessage
      (\ s a -> s{_asUserFacingMessage = a})

-- | The status code.
asStatusCode :: Lens' ActionStatus (Maybe ActionStatusStatusCode)
asStatusCode
  = lens _asStatusCode (\ s a -> s{_asStatusCode = a})

instance FromJSON ActionStatus where
        parseJSON
          = withObject "ActionStatus"
              (\ o ->
                 ActionStatus' <$>
                   (o .:? "userFacingMessage") <*> (o .:? "statusCode"))

instance ToJSON ActionStatus where
        toJSON ActionStatus'{..}
          = object
              (catMaybes
                 [("userFacingMessage" .=) <$> _asUserFacingMessage,
                  ("statusCode" .=) <$> _asStatusCode])

-- | The item in the switch control. A radio button, at most one of the items
-- is selected.
--
-- /See:/ 'googleAppsCardV1SelectionItem' smart constructor.
data GoogleAppsCardV1SelectionItem =
  GoogleAppsCardV1SelectionItem'
    { _gText :: !(Maybe Text)
    , _gValue :: !(Maybe Text)
    , _gSelected :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1SelectionItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gText'
--
-- * 'gValue'
--
-- * 'gSelected'
googleAppsCardV1SelectionItem
    :: GoogleAppsCardV1SelectionItem
googleAppsCardV1SelectionItem =
  GoogleAppsCardV1SelectionItem'
    {_gText = Nothing, _gValue = Nothing, _gSelected = Nothing}


-- | The text to be displayed.
gText :: Lens' GoogleAppsCardV1SelectionItem (Maybe Text)
gText = lens _gText (\ s a -> s{_gText = a})

-- | The value associated with this item. The client should use this as a
-- form input value.
gValue :: Lens' GoogleAppsCardV1SelectionItem (Maybe Text)
gValue = lens _gValue (\ s a -> s{_gValue = a})

-- | If more than one item is selected for \`RADIO_BUTTON\` and \`DROPDOWN\`,
-- the first selected item is treated as selected and the ones after are
-- ignored.
gSelected :: Lens' GoogleAppsCardV1SelectionItem (Maybe Bool)
gSelected
  = lens _gSelected (\ s a -> s{_gSelected = a})

instance FromJSON GoogleAppsCardV1SelectionItem where
        parseJSON
          = withObject "GoogleAppsCardV1SelectionItem"
              (\ o ->
                 GoogleAppsCardV1SelectionItem' <$>
                   (o .:? "text") <*> (o .:? "value") <*>
                     (o .:? "selected"))

instance ToJSON GoogleAppsCardV1SelectionItem where
        toJSON GoogleAppsCardV1SelectionItem'{..}
          = object
              (catMaybes
                 [("text" .=) <$> _gText, ("value" .=) <$> _gValue,
                  ("selected" .=) <$> _gSelected])

-- | Parameters that a bot can use to configure how it\'s response is posted.
--
-- /See:/ 'actionResponse' smart constructor.
data ActionResponse =
  ActionResponse'
    { _arURL :: !(Maybe Text)
    , _arType :: !(Maybe ActionResponseType)
    , _arDialogAction :: !(Maybe DialogAction)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ActionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arURL'
--
-- * 'arType'
--
-- * 'arDialogAction'
actionResponse
    :: ActionResponse
actionResponse =
  ActionResponse'
    {_arURL = Nothing, _arType = Nothing, _arDialogAction = Nothing}


-- | URL for users to auth or config. (Only for REQUEST_CONFIG response
-- types.)
arURL :: Lens' ActionResponse (Maybe Text)
arURL = lens _arURL (\ s a -> s{_arURL = a})

-- | The type of bot response.
arType :: Lens' ActionResponse (Maybe ActionResponseType)
arType = lens _arType (\ s a -> s{_arType = a})

-- | This response is for Dialog related events and must be accompanied by
-- ResponseType.Dialog
arDialogAction :: Lens' ActionResponse (Maybe DialogAction)
arDialogAction
  = lens _arDialogAction
      (\ s a -> s{_arDialogAction = a})

instance FromJSON ActionResponse where
        parseJSON
          = withObject "ActionResponse"
              (\ o ->
                 ActionResponse' <$>
                   (o .:? "url") <*> (o .:? "type") <*>
                     (o .:? "dialogAction"))

instance ToJSON ActionResponse where
        toJSON ActionResponse'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _arURL, ("type" .=) <$> _arType,
                  ("dialogAction" .=) <$> _arDialogAction])

-- | Represents a single item in the grid layout.
--
-- /See:/ 'googleAppsCardV1GridItem' smart constructor.
data GoogleAppsCardV1GridItem =
  GoogleAppsCardV1GridItem'
    { _gacvgiImage :: !(Maybe GoogleAppsCardV1ImageComponent)
    , _gacvgiLayout :: !(Maybe GoogleAppsCardV1GridItemLayout)
    , _gacvgiTextAlignment :: !(Maybe GoogleAppsCardV1GridItemTextAlignment)
    , _gacvgiSubtitle :: !(Maybe Text)
    , _gacvgiId :: !(Maybe Text)
    , _gacvgiTitle :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1GridItem' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvgiImage'
--
-- * 'gacvgiLayout'
--
-- * 'gacvgiTextAlignment'
--
-- * 'gacvgiSubtitle'
--
-- * 'gacvgiId'
--
-- * 'gacvgiTitle'
googleAppsCardV1GridItem
    :: GoogleAppsCardV1GridItem
googleAppsCardV1GridItem =
  GoogleAppsCardV1GridItem'
    { _gacvgiImage = Nothing
    , _gacvgiLayout = Nothing
    , _gacvgiTextAlignment = Nothing
    , _gacvgiSubtitle = Nothing
    , _gacvgiId = Nothing
    , _gacvgiTitle = Nothing
    }


-- | The image that displays in the grid item.
gacvgiImage :: Lens' GoogleAppsCardV1GridItem (Maybe GoogleAppsCardV1ImageComponent)
gacvgiImage
  = lens _gacvgiImage (\ s a -> s{_gacvgiImage = a})

-- | The layout to use for the grid item.
gacvgiLayout :: Lens' GoogleAppsCardV1GridItem (Maybe GoogleAppsCardV1GridItemLayout)
gacvgiLayout
  = lens _gacvgiLayout (\ s a -> s{_gacvgiLayout = a})

-- | The horizontal alignment of the grid item\'s text.
gacvgiTextAlignment :: Lens' GoogleAppsCardV1GridItem (Maybe GoogleAppsCardV1GridItemTextAlignment)
gacvgiTextAlignment
  = lens _gacvgiTextAlignment
      (\ s a -> s{_gacvgiTextAlignment = a})

-- | The grid item\'s subtitle.
gacvgiSubtitle :: Lens' GoogleAppsCardV1GridItem (Maybe Text)
gacvgiSubtitle
  = lens _gacvgiSubtitle
      (\ s a -> s{_gacvgiSubtitle = a})

-- | A user-specified identifier for this grid item. This identifier is
-- returned in the parent Grid\'s onClick callback parameters.
gacvgiId :: Lens' GoogleAppsCardV1GridItem (Maybe Text)
gacvgiId = lens _gacvgiId (\ s a -> s{_gacvgiId = a})

-- | The grid item\'s title.
gacvgiTitle :: Lens' GoogleAppsCardV1GridItem (Maybe Text)
gacvgiTitle
  = lens _gacvgiTitle (\ s a -> s{_gacvgiTitle = a})

instance FromJSON GoogleAppsCardV1GridItem where
        parseJSON
          = withObject "GoogleAppsCardV1GridItem"
              (\ o ->
                 GoogleAppsCardV1GridItem' <$>
                   (o .:? "image") <*> (o .:? "layout") <*>
                     (o .:? "textAlignment")
                     <*> (o .:? "subtitle")
                     <*> (o .:? "id")
                     <*> (o .:? "title"))

instance ToJSON GoogleAppsCardV1GridItem where
        toJSON GoogleAppsCardV1GridItem'{..}
          = object
              (catMaybes
                 [("image" .=) <$> _gacvgiImage,
                  ("layout" .=) <$> _gacvgiLayout,
                  ("textAlignment" .=) <$> _gacvgiTextAlignment,
                  ("subtitle" .=) <$> _gacvgiSubtitle,
                  ("id" .=) <$> _gacvgiId,
                  ("title" .=) <$> _gacvgiTitle])

--
-- /See:/ 'googleAppsCardV1SwitchControl' smart constructor.
data GoogleAppsCardV1SwitchControl =
  GoogleAppsCardV1SwitchControl'
    { _gacvscValue :: !(Maybe Text)
    , _gacvscSelected :: !(Maybe Bool)
    , _gacvscName :: !(Maybe Text)
    , _gacvscControlType :: !(Maybe GoogleAppsCardV1SwitchControlControlType)
    , _gacvscOnChangeAction :: !(Maybe GoogleAppsCardV1Action)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1SwitchControl' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvscValue'
--
-- * 'gacvscSelected'
--
-- * 'gacvscName'
--
-- * 'gacvscControlType'
--
-- * 'gacvscOnChangeAction'
googleAppsCardV1SwitchControl
    :: GoogleAppsCardV1SwitchControl
googleAppsCardV1SwitchControl =
  GoogleAppsCardV1SwitchControl'
    { _gacvscValue = Nothing
    , _gacvscSelected = Nothing
    , _gacvscName = Nothing
    , _gacvscControlType = Nothing
    , _gacvscOnChangeAction = Nothing
    }


-- | The value is what is passed back in the callback.
gacvscValue :: Lens' GoogleAppsCardV1SwitchControl (Maybe Text)
gacvscValue
  = lens _gacvscValue (\ s a -> s{_gacvscValue = a})

-- | If the switch is selected.
gacvscSelected :: Lens' GoogleAppsCardV1SwitchControl (Maybe Bool)
gacvscSelected
  = lens _gacvscSelected
      (\ s a -> s{_gacvscSelected = a})

-- | The name of the switch widget that\'s used in formInput.
gacvscName :: Lens' GoogleAppsCardV1SwitchControl (Maybe Text)
gacvscName
  = lens _gacvscName (\ s a -> s{_gacvscName = a})

-- | The control type, either switch or checkbox.
gacvscControlType :: Lens' GoogleAppsCardV1SwitchControl (Maybe GoogleAppsCardV1SwitchControlControlType)
gacvscControlType
  = lens _gacvscControlType
      (\ s a -> s{_gacvscControlType = a})

-- | The action when the switch state is changed.
gacvscOnChangeAction :: Lens' GoogleAppsCardV1SwitchControl (Maybe GoogleAppsCardV1Action)
gacvscOnChangeAction
  = lens _gacvscOnChangeAction
      (\ s a -> s{_gacvscOnChangeAction = a})

instance FromJSON GoogleAppsCardV1SwitchControl where
        parseJSON
          = withObject "GoogleAppsCardV1SwitchControl"
              (\ o ->
                 GoogleAppsCardV1SwitchControl' <$>
                   (o .:? "value") <*> (o .:? "selected") <*>
                     (o .:? "name")
                     <*> (o .:? "controlType")
                     <*> (o .:? "onChangeAction"))

instance ToJSON GoogleAppsCardV1SwitchControl where
        toJSON GoogleAppsCardV1SwitchControl'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _gacvscValue,
                  ("selected" .=) <$> _gacvscSelected,
                  ("name" .=) <$> _gacvscName,
                  ("controlType" .=) <$> _gacvscControlType,
                  ("onChangeAction" .=) <$> _gacvscOnChangeAction])

-- | A reference to the data of a drive attachment.
--
-- /See:/ 'driveDataRef' smart constructor.
newtype DriveDataRef =
  DriveDataRef'
    { _ddrDriveFileId :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DriveDataRef' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddrDriveFileId'
driveDataRef
    :: DriveDataRef
driveDataRef = DriveDataRef' {_ddrDriveFileId = Nothing}


-- | The id for the drive file, for use with the Drive API.
ddrDriveFileId :: Lens' DriveDataRef (Maybe Text)
ddrDriveFileId
  = lens _ddrDriveFileId
      (\ s a -> s{_ddrDriveFileId = a})

instance FromJSON DriveDataRef where
        parseJSON
          = withObject "DriveDataRef"
              (\ o -> DriveDataRef' <$> (o .:? "driveFileId"))

instance ToJSON DriveDataRef where
        toJSON DriveDataRef'{..}
          = object
              (catMaybes [("driveFileId" .=) <$> _ddrDriveFileId])

-- | A form action describes the behavior when the form is submitted. For
-- example, an Apps Script can be invoked to handle the form.
--
-- /See:/ 'formAction' smart constructor.
data FormAction =
  FormAction'
    { _faActionMethodName :: !(Maybe Text)
    , _faParameters :: !(Maybe [ActionParameter])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  FormAction' {_faActionMethodName = Nothing, _faParameters = Nothing}


-- | The method name is used to identify which part of the form triggered the
-- form submission. This information is echoed back to the bot as part of
-- the card click event. The same method name can be used for several
-- elements that trigger a common behavior if desired.
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
data ListMembershipsResponse =
  ListMembershipsResponse'
    { _lmrNextPageToken :: !(Maybe Text)
    , _lmrMemberships :: !(Maybe [Membership])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
    {_lmrNextPageToken = Nothing, _lmrMemberships = Nothing}


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

-- | Wrapper around the card body of the dialog.
--
-- /See:/ 'dialog' smart constructor.
newtype Dialog =
  Dialog'
    { _dBody :: Maybe GoogleAppsCardV1Card
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Dialog' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dBody'
dialog
    :: Dialog
dialog = Dialog' {_dBody = Nothing}


-- | Body of the dialog, which will be rendered in a modal. NOTE: The
-- following fields within the objects are not supported:
-- google.apps.card.v1.Widget.date_time_picker
-- google.apps.card.v1.DecoratedText.SwitchControl.on_change_action
-- google.apps.card.v1.TextInput.on_change_action
-- google.apps.card.v1.SelectionInput.on_change_action
-- google.apps.card.v1.DateTimePicker.on_change_action Setting the fields
-- above will have no effect on the dialog.
dBody :: Lens' Dialog (Maybe GoogleAppsCardV1Card)
dBody = lens _dBody (\ s a -> s{_dBody = a})

instance FromJSON Dialog where
        parseJSON
          = withObject "Dialog"
              (\ o -> Dialog' <$> (o .:? "body"))

instance ToJSON Dialog where
        toJSON Dialog'{..}
          = object (catMaybes [("body" .=) <$> _dBody])

-- | A message in Hangouts Chat.
--
-- /See:/ 'message' smart constructor.
data Message =
  Message'
    { _mesAnnotations :: !(Maybe [Annotation])
    , _mesSpace :: !(Maybe Space)
    , _mesText :: !(Maybe Text)
    , _mesSender :: !(Maybe User)
    , _mesAttachment :: !(Maybe [Attachment])
    , _mesName :: !(Maybe Text)
    , _mesPreviewText :: !(Maybe Text)
    , _mesCards :: !(Maybe [Card])
    , _mesSlashCommand :: !(Maybe SlashCommand)
    , _mesActionResponse :: !(Maybe ActionResponse)
    , _mesArgumentText :: !(Maybe Text)
    , _mesThread :: !(Maybe Thread)
    , _mesFallbackText :: !(Maybe Text)
    , _mesCreateTime :: !(Maybe DateTime')
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
-- * 'mesAttachment'
--
-- * 'mesName'
--
-- * 'mesPreviewText'
--
-- * 'mesCards'
--
-- * 'mesSlashCommand'
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
    , _mesAttachment = Nothing
    , _mesName = Nothing
    , _mesPreviewText = Nothing
    , _mesCards = Nothing
    , _mesSlashCommand = Nothing
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

-- | User uploaded attachment.
mesAttachment :: Lens' Message [Attachment]
mesAttachment
  = lens _mesAttachment
      (\ s a -> s{_mesAttachment = a})
      . _Default
      . _Coerce

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

-- | Slash command information, if applicable.
mesSlashCommand :: Lens' Message (Maybe SlashCommand)
mesSlashCommand
  = lens _mesSlashCommand
      (\ s a -> s{_mesSlashCommand = a})

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
                     <*> (o .:? "attachment" .!= mempty)
                     <*> (o .:? "name")
                     <*> (o .:? "previewText")
                     <*> (o .:? "cards" .!= mempty)
                     <*> (o .:? "slashCommand")
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
                  ("attachment" .=) <$> _mesAttachment,
                  ("name" .=) <$> _mesName,
                  ("previewText" .=) <$> _mesPreviewText,
                  ("cards" .=) <$> _mesCards,
                  ("slashCommand" .=) <$> _mesSlashCommand,
                  ("actionResponse" .=) <$> _mesActionResponse,
                  ("argumentText" .=) <$> _mesArgumentText,
                  ("thread" .=) <$> _mesThread,
                  ("fallbackText" .=) <$> _mesFallbackText,
                  ("createTime" .=) <$> _mesCreateTime])

--
-- /See:/ 'googleAppsCardV1Icon' smart constructor.
data GoogleAppsCardV1Icon =
  GoogleAppsCardV1Icon'
    { _gKnownIcon :: !(Maybe Text)
    , _gAltText :: !(Maybe Text)
    , _gImageType :: !(Maybe GoogleAppsCardV1IconImageType)
    , _gIconURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Icon' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gKnownIcon'
--
-- * 'gAltText'
--
-- * 'gImageType'
--
-- * 'gIconURL'
googleAppsCardV1Icon
    :: GoogleAppsCardV1Icon
googleAppsCardV1Icon =
  GoogleAppsCardV1Icon'
    { _gKnownIcon = Nothing
    , _gAltText = Nothing
    , _gImageType = Nothing
    , _gIconURL = Nothing
    }


-- | The icon specified by the string name of a list of known icons
gKnownIcon :: Lens' GoogleAppsCardV1Icon (Maybe Text)
gKnownIcon
  = lens _gKnownIcon (\ s a -> s{_gKnownIcon = a})

-- | The description of the icon, used for accessibility. The default value
-- is provided if you don\'t specify one.
gAltText :: Lens' GoogleAppsCardV1Icon (Maybe Text)
gAltText = lens _gAltText (\ s a -> s{_gAltText = a})

-- | The crop style applied to the image. In some cases, applying a
-- \`CIRCLE\` crop causes the image to be drawn larger than a standard
-- icon.
gImageType :: Lens' GoogleAppsCardV1Icon (Maybe GoogleAppsCardV1IconImageType)
gImageType
  = lens _gImageType (\ s a -> s{_gImageType = a})

-- | The icon specified by a URL.
gIconURL :: Lens' GoogleAppsCardV1Icon (Maybe Text)
gIconURL = lens _gIconURL (\ s a -> s{_gIconURL = a})

instance FromJSON GoogleAppsCardV1Icon where
        parseJSON
          = withObject "GoogleAppsCardV1Icon"
              (\ o ->
                 GoogleAppsCardV1Icon' <$>
                   (o .:? "knownIcon") <*> (o .:? "altText") <*>
                     (o .:? "imageType")
                     <*> (o .:? "iconUrl"))

instance ToJSON GoogleAppsCardV1Icon where
        toJSON GoogleAppsCardV1Icon'{..}
          = object
              (catMaybes
                 [("knownIcon" .=) <$> _gKnownIcon,
                  ("altText" .=) <$> _gAltText,
                  ("imageType" .=) <$> _gImageType,
                  ("iconUrl" .=) <$> _gIconURL])

--
-- /See:/ 'cardHeader' smart constructor.
data CardHeader =
  CardHeader'
    { _chSubtitle :: !(Maybe Text)
    , _chImageURL :: !(Maybe Text)
    , _chTitle :: !(Maybe Text)
    , _chImageStyle :: !(Maybe CardHeaderImageStyle)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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

-- | A text input is a UI item where users can input text. A text input can
-- also have an onChange action and suggestions.
--
-- /See:/ 'googleAppsCardV1TextInput' smart constructor.
data GoogleAppsCardV1TextInput =
  GoogleAppsCardV1TextInput'
    { _gacvtiAutoCompleteAction :: !(Maybe GoogleAppsCardV1Action)
    , _gacvtiValue :: !(Maybe Text)
    , _gacvtiName :: !(Maybe Text)
    , _gacvtiType :: !(Maybe GoogleAppsCardV1TextInputType)
    , _gacvtiHintText :: !(Maybe Text)
    , _gacvtiLabel :: !(Maybe Text)
    , _gacvtiInitialSuggestions :: !(Maybe GoogleAppsCardV1Suggestions)
    , _gacvtiOnChangeAction :: !(Maybe GoogleAppsCardV1Action)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1TextInput' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvtiAutoCompleteAction'
--
-- * 'gacvtiValue'
--
-- * 'gacvtiName'
--
-- * 'gacvtiType'
--
-- * 'gacvtiHintText'
--
-- * 'gacvtiLabel'
--
-- * 'gacvtiInitialSuggestions'
--
-- * 'gacvtiOnChangeAction'
googleAppsCardV1TextInput
    :: GoogleAppsCardV1TextInput
googleAppsCardV1TextInput =
  GoogleAppsCardV1TextInput'
    { _gacvtiAutoCompleteAction = Nothing
    , _gacvtiValue = Nothing
    , _gacvtiName = Nothing
    , _gacvtiType = Nothing
    , _gacvtiHintText = Nothing
    , _gacvtiLabel = Nothing
    , _gacvtiInitialSuggestions = Nothing
    , _gacvtiOnChangeAction = Nothing
    }


-- | The refresh function that returns suggestions based on the user\'s input
-- text. If the callback is not specified, autocomplete is done in client
-- side based on the initial suggestion items.
gacvtiAutoCompleteAction :: Lens' GoogleAppsCardV1TextInput (Maybe GoogleAppsCardV1Action)
gacvtiAutoCompleteAction
  = lens _gacvtiAutoCompleteAction
      (\ s a -> s{_gacvtiAutoCompleteAction = a})

-- | The default value when there is no input from the user.
gacvtiValue :: Lens' GoogleAppsCardV1TextInput (Maybe Text)
gacvtiValue
  = lens _gacvtiValue (\ s a -> s{_gacvtiValue = a})

-- | The name of the text input which is used in formInput.
gacvtiName :: Lens' GoogleAppsCardV1TextInput (Maybe Text)
gacvtiName
  = lens _gacvtiName (\ s a -> s{_gacvtiName = a})

-- | The style of the text, for example, a single line or multiple lines.
gacvtiType :: Lens' GoogleAppsCardV1TextInput (Maybe GoogleAppsCardV1TextInputType)
gacvtiType
  = lens _gacvtiType (\ s a -> s{_gacvtiType = a})

-- | The hint text.
gacvtiHintText :: Lens' GoogleAppsCardV1TextInput (Maybe Text)
gacvtiHintText
  = lens _gacvtiHintText
      (\ s a -> s{_gacvtiHintText = a})

-- | At least one of label and hintText must be specified.
gacvtiLabel :: Lens' GoogleAppsCardV1TextInput (Maybe Text)
gacvtiLabel
  = lens _gacvtiLabel (\ s a -> s{_gacvtiLabel = a})

-- | The initial suggestions made before any user input.
gacvtiInitialSuggestions :: Lens' GoogleAppsCardV1TextInput (Maybe GoogleAppsCardV1Suggestions)
gacvtiInitialSuggestions
  = lens _gacvtiInitialSuggestions
      (\ s a -> s{_gacvtiInitialSuggestions = a})

-- | The onChange action, for example, invoke a function.
gacvtiOnChangeAction :: Lens' GoogleAppsCardV1TextInput (Maybe GoogleAppsCardV1Action)
gacvtiOnChangeAction
  = lens _gacvtiOnChangeAction
      (\ s a -> s{_gacvtiOnChangeAction = a})

instance FromJSON GoogleAppsCardV1TextInput where
        parseJSON
          = withObject "GoogleAppsCardV1TextInput"
              (\ o ->
                 GoogleAppsCardV1TextInput' <$>
                   (o .:? "autoCompleteAction") <*> (o .:? "value") <*>
                     (o .:? "name")
                     <*> (o .:? "type")
                     <*> (o .:? "hintText")
                     <*> (o .:? "label")
                     <*> (o .:? "initialSuggestions")
                     <*> (o .:? "onChangeAction"))

instance ToJSON GoogleAppsCardV1TextInput where
        toJSON GoogleAppsCardV1TextInput'{..}
          = object
              (catMaybes
                 [("autoCompleteAction" .=) <$>
                    _gacvtiAutoCompleteAction,
                  ("value" .=) <$> _gacvtiValue,
                  ("name" .=) <$> _gacvtiName,
                  ("type" .=) <$> _gacvtiType,
                  ("hintText" .=) <$> _gacvtiHintText,
                  ("label" .=) <$> _gacvtiLabel,
                  ("initialSuggestions" .=) <$>
                    _gacvtiInitialSuggestions,
                  ("onChangeAction" .=) <$> _gacvtiOnChangeAction])

-- | A button with text and onclick action.
--
-- /See:/ 'textButton' smart constructor.
data TextButton =
  TextButton'
    { _tbOnClick :: !(Maybe OnClick)
    , _tbText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'TextButton' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tbOnClick'
--
-- * 'tbText'
textButton
    :: TextButton
textButton = TextButton' {_tbOnClick = Nothing, _tbText = Nothing}


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

-- | A paragraph of text that supports formatting. See [Text
-- formatting](workspace\/add-ons\/concepts\/widgets#text_formatting\") for
-- details.
--
-- /See:/ 'googleAppsCardV1TextParagraph' smart constructor.
newtype GoogleAppsCardV1TextParagraph =
  GoogleAppsCardV1TextParagraph'
    { _gacvtpText :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1TextParagraph' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvtpText'
googleAppsCardV1TextParagraph
    :: GoogleAppsCardV1TextParagraph
googleAppsCardV1TextParagraph =
  GoogleAppsCardV1TextParagraph' {_gacvtpText = Nothing}


-- | The text that\'s shown in the widget.
gacvtpText :: Lens' GoogleAppsCardV1TextParagraph (Maybe Text)
gacvtpText
  = lens _gacvtpText (\ s a -> s{_gacvtpText = a})

instance FromJSON GoogleAppsCardV1TextParagraph where
        parseJSON
          = withObject "GoogleAppsCardV1TextParagraph"
              (\ o ->
                 GoogleAppsCardV1TextParagraph' <$> (o .:? "text"))

instance ToJSON GoogleAppsCardV1TextParagraph where
        toJSON GoogleAppsCardV1TextParagraph'{..}
          = object (catMaybes [("text" .=) <$> _gacvtpText])

-- | Contains dialog if present as well as the ActionStatus for the request
-- sent from user.
--
-- /See:/ 'dialogAction' smart constructor.
data DialogAction =
  DialogAction'
    { _daActionStatus :: !(Maybe ActionStatus)
    , _daDialog :: !(Maybe Dialog)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DialogAction' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daActionStatus'
--
-- * 'daDialog'
dialogAction
    :: DialogAction
dialogAction = DialogAction' {_daActionStatus = Nothing, _daDialog = Nothing}


-- | Status for either invoke dialog or submit dialog requests. This will be
-- used to display a status and message to user if needed. For example in
-- case of an error or success.
daActionStatus :: Lens' DialogAction (Maybe ActionStatus)
daActionStatus
  = lens _daActionStatus
      (\ s a -> s{_daActionStatus = a})

-- | Dialog for the request.
daDialog :: Lens' DialogAction (Maybe Dialog)
daDialog = lens _daDialog (\ s a -> s{_daDialog = a})

instance FromJSON DialogAction where
        parseJSON
          = withObject "DialogAction"
              (\ o ->
                 DialogAction' <$>
                   (o .:? "actionStatus") <*> (o .:? "dialog"))

instance ToJSON DialogAction where
        toJSON DialogAction'{..}
          = object
              (catMaybes
                 [("actionStatus" .=) <$> _daActionStatus,
                  ("dialog" .=) <$> _daDialog])

-- | A button. Can be a text button or an image button.
--
-- /See:/ 'googleAppsCardV1Button' smart constructor.
data GoogleAppsCardV1Button =
  GoogleAppsCardV1Button'
    { _gacvbOnClick :: !(Maybe GoogleAppsCardV1OnClick)
    , _gacvbColor :: !(Maybe Color)
    , _gacvbText :: !(Maybe Text)
    , _gacvbDisabled :: !(Maybe Bool)
    , _gacvbIcon :: !(Maybe GoogleAppsCardV1Icon)
    , _gacvbAltText :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Button' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvbOnClick'
--
-- * 'gacvbColor'
--
-- * 'gacvbText'
--
-- * 'gacvbDisabled'
--
-- * 'gacvbIcon'
--
-- * 'gacvbAltText'
googleAppsCardV1Button
    :: GoogleAppsCardV1Button
googleAppsCardV1Button =
  GoogleAppsCardV1Button'
    { _gacvbOnClick = Nothing
    , _gacvbColor = Nothing
    , _gacvbText = Nothing
    , _gacvbDisabled = Nothing
    , _gacvbIcon = Nothing
    , _gacvbAltText = Nothing
    }


-- | The action to perform when the button is clicked.
gacvbOnClick :: Lens' GoogleAppsCardV1Button (Maybe GoogleAppsCardV1OnClick)
gacvbOnClick
  = lens _gacvbOnClick (\ s a -> s{_gacvbOnClick = a})

-- | If set, the button is filled with a solid background.
gacvbColor :: Lens' GoogleAppsCardV1Button (Maybe Color)
gacvbColor
  = lens _gacvbColor (\ s a -> s{_gacvbColor = a})

-- | The text of the button.
gacvbText :: Lens' GoogleAppsCardV1Button (Maybe Text)
gacvbText
  = lens _gacvbText (\ s a -> s{_gacvbText = a})

-- | If true, the button is displayed in a disabled state and doesn\'t
-- respond to user actions.
gacvbDisabled :: Lens' GoogleAppsCardV1Button (Maybe Bool)
gacvbDisabled
  = lens _gacvbDisabled
      (\ s a -> s{_gacvbDisabled = a})

-- | The icon image.
gacvbIcon :: Lens' GoogleAppsCardV1Button (Maybe GoogleAppsCardV1Icon)
gacvbIcon
  = lens _gacvbIcon (\ s a -> s{_gacvbIcon = a})

-- | The alternative text used for accessibility. Has no effect when an icon
-- is set; use \`icon.alt_text\` instead.
gacvbAltText :: Lens' GoogleAppsCardV1Button (Maybe Text)
gacvbAltText
  = lens _gacvbAltText (\ s a -> s{_gacvbAltText = a})

instance FromJSON GoogleAppsCardV1Button where
        parseJSON
          = withObject "GoogleAppsCardV1Button"
              (\ o ->
                 GoogleAppsCardV1Button' <$>
                   (o .:? "onClick") <*> (o .:? "color") <*>
                     (o .:? "text")
                     <*> (o .:? "disabled")
                     <*> (o .:? "icon")
                     <*> (o .:? "altText"))

instance ToJSON GoogleAppsCardV1Button where
        toJSON GoogleAppsCardV1Button'{..}
          = object
              (catMaybes
                 [("onClick" .=) <$> _gacvbOnClick,
                  ("color" .=) <$> _gacvbColor,
                  ("text" .=) <$> _gacvbText,
                  ("disabled" .=) <$> _gacvbDisabled,
                  ("icon" .=) <$> _gacvbIcon,
                  ("altText" .=) <$> _gacvbAltText])

-- | An action that describes the behavior when the form is submitted. For
-- example, an Apps Script can be invoked to handle the form.
--
-- /See:/ 'googleAppsCardV1Action' smart constructor.
data GoogleAppsCardV1Action =
  GoogleAppsCardV1Action'
    { _gacvaLoadIndicator :: !(Maybe GoogleAppsCardV1ActionLoadIndicator)
    , _gacvaFunction :: !(Maybe Text)
    , _gacvaParameters :: !(Maybe [GoogleAppsCardV1ActionParameter])
    , _gacvaPersistValues :: !(Maybe Bool)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'GoogleAppsCardV1Action' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gacvaLoadIndicator'
--
-- * 'gacvaFunction'
--
-- * 'gacvaParameters'
--
-- * 'gacvaPersistValues'
googleAppsCardV1Action
    :: GoogleAppsCardV1Action
googleAppsCardV1Action =
  GoogleAppsCardV1Action'
    { _gacvaLoadIndicator = Nothing
    , _gacvaFunction = Nothing
    , _gacvaParameters = Nothing
    , _gacvaPersistValues = Nothing
    }


gacvaLoadIndicator :: Lens' GoogleAppsCardV1Action (Maybe GoogleAppsCardV1ActionLoadIndicator)
gacvaLoadIndicator
  = lens _gacvaLoadIndicator
      (\ s a -> s{_gacvaLoadIndicator = a})

-- | Apps Script function to invoke when the containing element is
-- clicked\/activated.
gacvaFunction :: Lens' GoogleAppsCardV1Action (Maybe Text)
gacvaFunction
  = lens _gacvaFunction
      (\ s a -> s{_gacvaFunction = a})

-- | List of action parameters.
gacvaParameters :: Lens' GoogleAppsCardV1Action [GoogleAppsCardV1ActionParameter]
gacvaParameters
  = lens _gacvaParameters
      (\ s a -> s{_gacvaParameters = a})
      . _Default
      . _Coerce

-- | Indicates whether form values persist after the action. The default
-- value is \`false\`. If \`true\`, form values remain after the action is
-- triggered. When using
-- [LoadIndicator.NONE](workspace\/add-ons\/reference\/rpc\/google.apps.card.v1#loadindicator)
-- for actions, \`persist_values\` = \`true\`is recommended, as it ensures
-- that any changes made by the user after form or on change actions are
-- sent to the server are not overwritten by the response. If \`false\`,
-- the form values are cleared when the action is triggered. When
-- \`persist_values\` is set to \`false\`, it is strongly recommended that
-- the card use
-- [LoadIndicator.SPINNER](workspace\/add-ons\/reference\/rpc\/google.apps.card.v1#loadindicator)
-- for all actions, as this locks the UI to ensure no changes are made by
-- the user while the action is being processed.
gacvaPersistValues :: Lens' GoogleAppsCardV1Action (Maybe Bool)
gacvaPersistValues
  = lens _gacvaPersistValues
      (\ s a -> s{_gacvaPersistValues = a})

instance FromJSON GoogleAppsCardV1Action where
        parseJSON
          = withObject "GoogleAppsCardV1Action"
              (\ o ->
                 GoogleAppsCardV1Action' <$>
                   (o .:? "loadIndicator") <*> (o .:? "function") <*>
                     (o .:? "parameters" .!= mempty)
                     <*> (o .:? "persistValues"))

instance ToJSON GoogleAppsCardV1Action where
        toJSON GoogleAppsCardV1Action'{..}
          = object
              (catMaybes
                 [("loadIndicator" .=) <$> _gacvaLoadIndicator,
                  ("function" .=) <$> _gacvaFunction,
                  ("parameters" .=) <$> _gacvaParameters,
                  ("persistValues" .=) <$> _gacvaPersistValues])

-- | A thread in Hangouts Chat.
--
-- /See:/ 'thread' smart constructor.
newtype Thread =
  Thread'
    { _tName :: Maybe Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Thread' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tName'
thread
    :: Thread
thread = Thread' {_tName = Nothing}


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
data UserMentionMetadata =
  UserMentionMetadata'
    { _ummUser :: !(Maybe User)
    , _ummType :: !(Maybe UserMentionMetadataType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
  UserMentionMetadata' {_ummUser = Nothing, _ummType = Nothing}


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
data ImageButton =
  ImageButton'
    { _ibOnClick :: !(Maybe OnClick)
    , _ibIcon :: !(Maybe ImageButtonIcon)
    , _ibName :: !(Maybe Text)
    , _ibIconURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


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
data Section =
  Section'
    { _sWidgets :: !(Maybe [WidgetMarkup])
    , _sHeader :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Section' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sWidgets'
--
-- * 'sHeader'
section
    :: Section
section = Section' {_sWidgets = Nothing, _sHeader = Nothing}


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
