{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Books.Mylibrary.Readingpositions.SetPosition
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets my reading position information for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @books.mylibrary.readingpositions.setPosition@.
module Network.Google.API.Books.Mylibrary.Readingpositions.SetPosition
    (
    -- * REST Resource
      MylibraryReadingpositionsSetPositionAPI

    -- * Creating a Request
    , mylibraryReadingpositionsSetPosition'
    , MylibraryReadingpositionsSetPosition'

    -- * Request Lenses
    , mrspDeviceCookie
    , mrspQuotaUser
    , mrspPrettyPrint
    , mrspUserIp
    , mrspContentVersion
    , mrspAction
    , mrspKey
    , mrspVolumeId
    , mrspSource
    , mrspOauthToken
    , mrspTimestamp
    , mrspFields
    , mrspAlt
    , mrspPosition
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for books.mylibrary.readingpositions.setPosition which the
-- 'MylibraryReadingpositionsSetPosition'' request conforms to.
type MylibraryReadingpositionsSetPositionAPI =
     "mylibrary" :>
       "readingpositions" :>
         Capture "volumeId" Text :>
           "setPosition" :>
             QueryParam "deviceCookie" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "contentVersion" Text :>
                       QueryParam "action"
                         MylibraryReadingpositionsSetPosition'Action
                         :>
                         QueryParam "key" Text :>
                           QueryParam "source" Text :>
                             QueryParam "oauth_token" Text :>
                               QueryParam "timestamp" Text :>
                                 QueryParam "fields" Text :>
                                   QueryParam "alt" Alt :>
                                     QueryParam "position" Text :>
                                       Post '[JSON] ()

-- | Sets my reading position information for a volume.
--
-- /See:/ 'mylibraryReadingpositionsSetPosition'' smart constructor.
data MylibraryReadingpositionsSetPosition' = MylibraryReadingpositionsSetPosition'
    { _mrspDeviceCookie   :: !(Maybe Text)
    , _mrspQuotaUser      :: !(Maybe Text)
    , _mrspPrettyPrint    :: !Bool
    , _mrspUserIp         :: !(Maybe Text)
    , _mrspContentVersion :: !(Maybe Text)
    , _mrspAction         :: !(Maybe MylibraryReadingpositionsSetPosition'Action)
    , _mrspKey            :: !(Maybe Text)
    , _mrspVolumeId       :: !Text
    , _mrspSource         :: !(Maybe Text)
    , _mrspOauthToken     :: !(Maybe Text)
    , _mrspTimestamp      :: !Text
    , _mrspFields         :: !(Maybe Text)
    , _mrspAlt            :: !Alt
    , _mrspPosition       :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryReadingpositionsSetPosition'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mrspDeviceCookie'
--
-- * 'mrspQuotaUser'
--
-- * 'mrspPrettyPrint'
--
-- * 'mrspUserIp'
--
-- * 'mrspContentVersion'
--
-- * 'mrspAction'
--
-- * 'mrspKey'
--
-- * 'mrspVolumeId'
--
-- * 'mrspSource'
--
-- * 'mrspOauthToken'
--
-- * 'mrspTimestamp'
--
-- * 'mrspFields'
--
-- * 'mrspAlt'
--
-- * 'mrspPosition'
mylibraryReadingpositionsSetPosition'
    :: Text -- ^ 'volumeId'
    -> Text -- ^ 'timestamp'
    -> Text -- ^ 'position'
    -> MylibraryReadingpositionsSetPosition'
mylibraryReadingpositionsSetPosition' pMrspVolumeId_ pMrspTimestamp_ pMrspPosition_ =
    MylibraryReadingpositionsSetPosition'
    { _mrspDeviceCookie = Nothing
    , _mrspQuotaUser = Nothing
    , _mrspPrettyPrint = True
    , _mrspUserIp = Nothing
    , _mrspContentVersion = Nothing
    , _mrspAction = Nothing
    , _mrspKey = Nothing
    , _mrspVolumeId = pMrspVolumeId_
    , _mrspSource = Nothing
    , _mrspOauthToken = Nothing
    , _mrspTimestamp = pMrspTimestamp_
    , _mrspFields = Nothing
    , _mrspAlt = JSON
    , _mrspPosition = pMrspPosition_
    }

-- | Random persistent device cookie optional on set position.
mrspDeviceCookie :: Lens' MylibraryReadingpositionsSetPosition' (Maybe Text)
mrspDeviceCookie
  = lens _mrspDeviceCookie
      (\ s a -> s{_mrspDeviceCookie = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mrspQuotaUser :: Lens' MylibraryReadingpositionsSetPosition' (Maybe Text)
mrspQuotaUser
  = lens _mrspQuotaUser
      (\ s a -> s{_mrspQuotaUser = a})

-- | Returns response with indentations and line breaks.
mrspPrettyPrint :: Lens' MylibraryReadingpositionsSetPosition' Bool
mrspPrettyPrint
  = lens _mrspPrettyPrint
      (\ s a -> s{_mrspPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mrspUserIp :: Lens' MylibraryReadingpositionsSetPosition' (Maybe Text)
mrspUserIp
  = lens _mrspUserIp (\ s a -> s{_mrspUserIp = a})

-- | Volume content version for which this reading position applies.
mrspContentVersion :: Lens' MylibraryReadingpositionsSetPosition' (Maybe Text)
mrspContentVersion
  = lens _mrspContentVersion
      (\ s a -> s{_mrspContentVersion = a})

-- | Action that caused this reading position to be set.
mrspAction :: Lens' MylibraryReadingpositionsSetPosition' (Maybe MylibraryReadingpositionsSetPosition'Action)
mrspAction
  = lens _mrspAction (\ s a -> s{_mrspAction = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mrspKey :: Lens' MylibraryReadingpositionsSetPosition' (Maybe Text)
mrspKey = lens _mrspKey (\ s a -> s{_mrspKey = a})

-- | ID of volume for which to update the reading position.
mrspVolumeId :: Lens' MylibraryReadingpositionsSetPosition' Text
mrspVolumeId
  = lens _mrspVolumeId (\ s a -> s{_mrspVolumeId = a})

-- | String to identify the originator of this request.
mrspSource :: Lens' MylibraryReadingpositionsSetPosition' (Maybe Text)
mrspSource
  = lens _mrspSource (\ s a -> s{_mrspSource = a})

-- | OAuth 2.0 token for the current user.
mrspOauthToken :: Lens' MylibraryReadingpositionsSetPosition' (Maybe Text)
mrspOauthToken
  = lens _mrspOauthToken
      (\ s a -> s{_mrspOauthToken = a})

-- | RFC 3339 UTC format timestamp associated with this reading position.
mrspTimestamp :: Lens' MylibraryReadingpositionsSetPosition' Text
mrspTimestamp
  = lens _mrspTimestamp
      (\ s a -> s{_mrspTimestamp = a})

-- | Selector specifying which fields to include in a partial response.
mrspFields :: Lens' MylibraryReadingpositionsSetPosition' (Maybe Text)
mrspFields
  = lens _mrspFields (\ s a -> s{_mrspFields = a})

-- | Data format for the response.
mrspAlt :: Lens' MylibraryReadingpositionsSetPosition' Alt
mrspAlt = lens _mrspAlt (\ s a -> s{_mrspAlt = a})

-- | Position string for the new volume reading position.
mrspPosition :: Lens' MylibraryReadingpositionsSetPosition' Text
mrspPosition
  = lens _mrspPosition (\ s a -> s{_mrspPosition = a})

instance GoogleRequest
         MylibraryReadingpositionsSetPosition' where
        type Rs MylibraryReadingpositionsSetPosition' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u
          MylibraryReadingpositionsSetPosition'{..}
          = go _mrspDeviceCookie _mrspQuotaUser
              (Just _mrspPrettyPrint)
              _mrspUserIp
              _mrspContentVersion
              _mrspAction
              _mrspKey
              _mrspVolumeId
              _mrspSource
              _mrspOauthToken
              (Just _mrspTimestamp)
              _mrspFields
              (Just _mrspAlt)
              (Just _mrspPosition)
          where go
                  = clientWithRoute
                      (Proxy ::
                         Proxy MylibraryReadingpositionsSetPositionAPI)
                      r
                      u
