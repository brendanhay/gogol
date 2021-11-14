{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.Indexing.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.Indexing.Types.Product where

import Network.Google.Indexing.Types.Sum
import Network.Google.Prelude

-- | Output for PublishUrlNotification
--
-- /See:/ 'publishURLNotificationResponse' smart constructor.
newtype PublishURLNotificationResponse =
  PublishURLNotificationResponse'
    { _punrURLNotificationMetadata :: Maybe URLNotificationMetadata
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PublishURLNotificationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'punrURLNotificationMetadata'
publishURLNotificationResponse
    :: PublishURLNotificationResponse
publishURLNotificationResponse =
  PublishURLNotificationResponse' {_punrURLNotificationMetadata = Nothing}


-- | Description of the notification events received for this URL.
punrURLNotificationMetadata :: Lens' PublishURLNotificationResponse (Maybe URLNotificationMetadata)
punrURLNotificationMetadata
  = lens _punrURLNotificationMetadata
      (\ s a -> s{_punrURLNotificationMetadata = a})

instance FromJSON PublishURLNotificationResponse
         where
        parseJSON
          = withObject "PublishURLNotificationResponse"
              (\ o ->
                 PublishURLNotificationResponse' <$>
                   (o .:? "urlNotificationMetadata"))

instance ToJSON PublishURLNotificationResponse where
        toJSON PublishURLNotificationResponse'{..}
          = object
              (catMaybes
                 [("urlNotificationMetadata" .=) <$>
                    _punrURLNotificationMetadata])

-- | Summary of the most recent Indexing API notifications successfully
-- received, for a given URL.
--
-- /See:/ 'urlNotificationMetadata' smart constructor.
data URLNotificationMetadata =
  URLNotificationMetadata'
    { _unmLatestUpdate :: !(Maybe URLNotification)
    , _unmLatestRemove :: !(Maybe URLNotification)
    , _unmURL :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLNotificationMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unmLatestUpdate'
--
-- * 'unmLatestRemove'
--
-- * 'unmURL'
urlNotificationMetadata
    :: URLNotificationMetadata
urlNotificationMetadata =
  URLNotificationMetadata'
    {_unmLatestUpdate = Nothing, _unmLatestRemove = Nothing, _unmURL = Nothing}


-- | Latest notification received with type \`URL_UPDATED\`.
unmLatestUpdate :: Lens' URLNotificationMetadata (Maybe URLNotification)
unmLatestUpdate
  = lens _unmLatestUpdate
      (\ s a -> s{_unmLatestUpdate = a})

-- | Latest notification received with type \`URL_REMOVED\`.
unmLatestRemove :: Lens' URLNotificationMetadata (Maybe URLNotification)
unmLatestRemove
  = lens _unmLatestRemove
      (\ s a -> s{_unmLatestRemove = a})

-- | URL to which this metadata refers.
unmURL :: Lens' URLNotificationMetadata (Maybe Text)
unmURL = lens _unmURL (\ s a -> s{_unmURL = a})

instance FromJSON URLNotificationMetadata where
        parseJSON
          = withObject "URLNotificationMetadata"
              (\ o ->
                 URLNotificationMetadata' <$>
                   (o .:? "latestUpdate") <*> (o .:? "latestRemove") <*>
                     (o .:? "url"))

instance ToJSON URLNotificationMetadata where
        toJSON URLNotificationMetadata'{..}
          = object
              (catMaybes
                 [("latestUpdate" .=) <$> _unmLatestUpdate,
                  ("latestRemove" .=) <$> _unmLatestRemove,
                  ("url" .=) <$> _unmURL])

-- | \`UrlNotification\` is the resource used in all Indexing API calls. It
-- describes one event in the life cycle of a Web Document.
--
-- /See:/ 'urlNotification' smart constructor.
data URLNotification =
  URLNotification'
    { _unURL :: !(Maybe Text)
    , _unNotifyTime :: !(Maybe DateTime')
    , _unType :: !(Maybe URLNotificationType)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'URLNotification' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'unURL'
--
-- * 'unNotifyTime'
--
-- * 'unType'
urlNotification
    :: URLNotification
urlNotification =
  URLNotification'
    {_unURL = Nothing, _unNotifyTime = Nothing, _unType = Nothing}


-- | The object of this notification. The URL must be owned by the publisher
-- of this notification and, in case of \`URL_UPDATED\` notifications, it
-- _must_ be crawlable by Google.
unURL :: Lens' URLNotification (Maybe Text)
unURL = lens _unURL (\ s a -> s{_unURL = a})

-- | Creation timestamp for this notification. Users should _not_ specify it,
-- the field is ignored at the request time.
unNotifyTime :: Lens' URLNotification (Maybe UTCTime)
unNotifyTime
  = lens _unNotifyTime (\ s a -> s{_unNotifyTime = a})
      . mapping _DateTime

-- | The URL life cycle event that Google is being notified about.
unType :: Lens' URLNotification (Maybe URLNotificationType)
unType = lens _unType (\ s a -> s{_unType = a})

instance FromJSON URLNotification where
        parseJSON
          = withObject "URLNotification"
              (\ o ->
                 URLNotification' <$>
                   (o .:? "url") <*> (o .:? "notifyTime") <*>
                     (o .:? "type"))

instance ToJSON URLNotification where
        toJSON URLNotification'{..}
          = object
              (catMaybes
                 [("url" .=) <$> _unURL,
                  ("notifyTime" .=) <$> _unNotifyTime,
                  ("type" .=) <$> _unType])
