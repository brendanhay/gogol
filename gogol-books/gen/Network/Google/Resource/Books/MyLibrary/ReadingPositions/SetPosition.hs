{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets my reading position information for a volume.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMyLibraryReadingPositionsSetPosition@.
module Network.Google.Resource.Books.MyLibrary.ReadingPositions.SetPosition
    (
    -- * REST Resource
      MyLibraryReadingPositionsSetPositionResource

    -- * Creating a Request
    , myLibraryReadingPositionsSetPosition'
    , MyLibraryReadingPositionsSetPosition'

    -- * Request Lenses
    , mlrpspDeviceCookie
    , mlrpspQuotaUser
    , mlrpspPrettyPrint
    , mlrpspUserIP
    , mlrpspContentVersion
    , mlrpspAction
    , mlrpspKey
    , mlrpspVolumeId
    , mlrpspSource
    , mlrpspOAuthToken
    , mlrpspTimestamp
    , mlrpspFields
    , mlrpspPosition
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMyLibraryReadingPositionsSetPosition@ method which the
-- 'MyLibraryReadingPositionsSetPosition'' request conforms to.
type MyLibraryReadingPositionsSetPositionResource =
     "mylibrary" :>
       "readingpositions" :>
         Capture "volumeId" Text :>
           "setPosition" :>
             QueryParam "timestamp" Text :>
               QueryParam "position" Text :>
                 QueryParam "deviceCookie" Text :>
                   QueryParam "contentVersion" Text :>
                     QueryParam "action"
                       MyLibraryReadingPositionsSetPositionAction
                       :>
                       QueryParam "source" Text :>
                         QueryParam "quotaUser" Text :>
                           QueryParam "prettyPrint" Bool :>
                             QueryParam "userIp" Text :>
                               QueryParam "fields" Text :>
                                 QueryParam "key" AuthKey :>
                                   Header "Authorization" OAuthToken :>
                                     QueryParam "alt" AltJSON :> Post '[JSON] ()

-- | Sets my reading position information for a volume.
--
-- /See:/ 'myLibraryReadingPositionsSetPosition'' smart constructor.
data MyLibraryReadingPositionsSetPosition' = MyLibraryReadingPositionsSetPosition'
    { _mlrpspDeviceCookie   :: !(Maybe Text)
    , _mlrpspQuotaUser      :: !(Maybe Text)
    , _mlrpspPrettyPrint    :: !Bool
    , _mlrpspUserIP         :: !(Maybe Text)
    , _mlrpspContentVersion :: !(Maybe Text)
    , _mlrpspAction         :: !(Maybe MyLibraryReadingPositionsSetPositionAction)
    , _mlrpspKey            :: !(Maybe AuthKey)
    , _mlrpspVolumeId       :: !Text
    , _mlrpspSource         :: !(Maybe Text)
    , _mlrpspOAuthToken     :: !(Maybe OAuthToken)
    , _mlrpspTimestamp      :: !Text
    , _mlrpspFields         :: !(Maybe Text)
    , _mlrpspPosition       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'MyLibraryReadingPositionsSetPosition'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlrpspDeviceCookie'
--
-- * 'mlrpspQuotaUser'
--
-- * 'mlrpspPrettyPrint'
--
-- * 'mlrpspUserIP'
--
-- * 'mlrpspContentVersion'
--
-- * 'mlrpspAction'
--
-- * 'mlrpspKey'
--
-- * 'mlrpspVolumeId'
--
-- * 'mlrpspSource'
--
-- * 'mlrpspOAuthToken'
--
-- * 'mlrpspTimestamp'
--
-- * 'mlrpspFields'
--
-- * 'mlrpspPosition'
myLibraryReadingPositionsSetPosition'
    :: Text -- ^ 'volumeId'
    -> Text -- ^ 'timestamp'
    -> Text -- ^ 'position'
    -> MyLibraryReadingPositionsSetPosition'
myLibraryReadingPositionsSetPosition' pMlrpspVolumeId_ pMlrpspTimestamp_ pMlrpspPosition_ =
    MyLibraryReadingPositionsSetPosition'
    { _mlrpspDeviceCookie = Nothing
    , _mlrpspQuotaUser = Nothing
    , _mlrpspPrettyPrint = True
    , _mlrpspUserIP = Nothing
    , _mlrpspContentVersion = Nothing
    , _mlrpspAction = Nothing
    , _mlrpspKey = Nothing
    , _mlrpspVolumeId = pMlrpspVolumeId_
    , _mlrpspSource = Nothing
    , _mlrpspOAuthToken = Nothing
    , _mlrpspTimestamp = pMlrpspTimestamp_
    , _mlrpspFields = Nothing
    , _mlrpspPosition = pMlrpspPosition_
    }

-- | Random persistent device cookie optional on set position.
mlrpspDeviceCookie :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe Text)
mlrpspDeviceCookie
  = lens _mlrpspDeviceCookie
      (\ s a -> s{_mlrpspDeviceCookie = a})

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
mlrpspQuotaUser :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe Text)
mlrpspQuotaUser
  = lens _mlrpspQuotaUser
      (\ s a -> s{_mlrpspQuotaUser = a})

-- | Returns response with indentations and line breaks.
mlrpspPrettyPrint :: Lens' MyLibraryReadingPositionsSetPosition' Bool
mlrpspPrettyPrint
  = lens _mlrpspPrettyPrint
      (\ s a -> s{_mlrpspPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
mlrpspUserIP :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe Text)
mlrpspUserIP
  = lens _mlrpspUserIP (\ s a -> s{_mlrpspUserIP = a})

-- | Volume content version for which this reading position applies.
mlrpspContentVersion :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe Text)
mlrpspContentVersion
  = lens _mlrpspContentVersion
      (\ s a -> s{_mlrpspContentVersion = a})

-- | Action that caused this reading position to be set.
mlrpspAction :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe MyLibraryReadingPositionsSetPositionAction)
mlrpspAction
  = lens _mlrpspAction (\ s a -> s{_mlrpspAction = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
mlrpspKey :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe AuthKey)
mlrpspKey
  = lens _mlrpspKey (\ s a -> s{_mlrpspKey = a})

-- | ID of volume for which to update the reading position.
mlrpspVolumeId :: Lens' MyLibraryReadingPositionsSetPosition' Text
mlrpspVolumeId
  = lens _mlrpspVolumeId
      (\ s a -> s{_mlrpspVolumeId = a})

-- | String to identify the originator of this request.
mlrpspSource :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe Text)
mlrpspSource
  = lens _mlrpspSource (\ s a -> s{_mlrpspSource = a})

-- | OAuth 2.0 token for the current user.
mlrpspOAuthToken :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe OAuthToken)
mlrpspOAuthToken
  = lens _mlrpspOAuthToken
      (\ s a -> s{_mlrpspOAuthToken = a})

-- | RFC 3339 UTC format timestamp associated with this reading position.
mlrpspTimestamp :: Lens' MyLibraryReadingPositionsSetPosition' Text
mlrpspTimestamp
  = lens _mlrpspTimestamp
      (\ s a -> s{_mlrpspTimestamp = a})

-- | Selector specifying which fields to include in a partial response.
mlrpspFields :: Lens' MyLibraryReadingPositionsSetPosition' (Maybe Text)
mlrpspFields
  = lens _mlrpspFields (\ s a -> s{_mlrpspFields = a})

-- | Position string for the new volume reading position.
mlrpspPosition :: Lens' MyLibraryReadingPositionsSetPosition' Text
mlrpspPosition
  = lens _mlrpspPosition
      (\ s a -> s{_mlrpspPosition = a})

instance GoogleAuth
         MyLibraryReadingPositionsSetPosition' where
        _AuthKey = mlrpspKey . _Just
        _AuthToken = mlrpspOAuthToken . _Just

instance GoogleRequest
         MyLibraryReadingPositionsSetPosition' where
        type Rs MyLibraryReadingPositionsSetPosition' = ()
        request = requestWith booksRequest
        requestWith rq
          MyLibraryReadingPositionsSetPosition'{..}
          = go _mlrpspVolumeId (Just _mlrpspTimestamp)
              (Just _mlrpspPosition)
              _mlrpspDeviceCookie
              _mlrpspContentVersion
              _mlrpspAction
              _mlrpspSource
              _mlrpspQuotaUser
              (Just _mlrpspPrettyPrint)
              _mlrpspUserIP
              _mlrpspFields
              _mlrpspKey
              _mlrpspOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy ::
                         Proxy MyLibraryReadingPositionsSetPositionResource)
                      rq
