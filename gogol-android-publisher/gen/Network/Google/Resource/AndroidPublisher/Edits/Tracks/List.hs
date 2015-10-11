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
-- Module      : Network.Google.Resource.AndroidPublisher.Edits.Tracks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the track configurations for this edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidPublisherEditsTracksList@.
module Network.Google.Resource.AndroidPublisher.Edits.Tracks.List
    (
    -- * REST Resource
      EditsTracksListResource

    -- * Creating a Request
    , editsTracksList'
    , EditsTracksList'

    -- * Request Lenses
    , etlQuotaUser
    , etlPrettyPrint
    , etlPackageName
    , etlUserIP
    , etlKey
    , etlOAuthToken
    , etlEditId
    , etlFields
    ) where

import           Network.Google.AndroidPublisher.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidPublisherEditsTracksList@ method which the
-- 'EditsTracksList'' request conforms to.
type EditsTracksListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] TracksListResponse

-- | Lists all the track configurations for this edit.
--
-- /See:/ 'editsTracksList'' smart constructor.
data EditsTracksList' = EditsTracksList'
    { _etlQuotaUser   :: !(Maybe Text)
    , _etlPrettyPrint :: !Bool
    , _etlPackageName :: !Text
    , _etlUserIP      :: !(Maybe Text)
    , _etlKey         :: !(Maybe AuthKey)
    , _etlOAuthToken  :: !(Maybe OAuthToken)
    , _etlEditId      :: !Text
    , _etlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EditsTracksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'etlQuotaUser'
--
-- * 'etlPrettyPrint'
--
-- * 'etlPackageName'
--
-- * 'etlUserIP'
--
-- * 'etlKey'
--
-- * 'etlOAuthToken'
--
-- * 'etlEditId'
--
-- * 'etlFields'
editsTracksList'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksList'
editsTracksList' pEtlPackageName_ pEtlEditId_ =
    EditsTracksList'
    { _etlQuotaUser = Nothing
    , _etlPrettyPrint = True
    , _etlPackageName = pEtlPackageName_
    , _etlUserIP = Nothing
    , _etlKey = Nothing
    , _etlOAuthToken = Nothing
    , _etlEditId = pEtlEditId_
    , _etlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
etlQuotaUser :: Lens' EditsTracksList' (Maybe Text)
etlQuotaUser
  = lens _etlQuotaUser (\ s a -> s{_etlQuotaUser = a})

-- | Returns response with indentations and line breaks.
etlPrettyPrint :: Lens' EditsTracksList' Bool
etlPrettyPrint
  = lens _etlPrettyPrint
      (\ s a -> s{_etlPrettyPrint = a})

-- | Unique identifier for the Android app that is being updated; for
-- example, \"com.spiffygame\".
etlPackageName :: Lens' EditsTracksList' Text
etlPackageName
  = lens _etlPackageName
      (\ s a -> s{_etlPackageName = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
etlUserIP :: Lens' EditsTracksList' (Maybe Text)
etlUserIP
  = lens _etlUserIP (\ s a -> s{_etlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etlKey :: Lens' EditsTracksList' (Maybe AuthKey)
etlKey = lens _etlKey (\ s a -> s{_etlKey = a})

-- | OAuth 2.0 token for the current user.
etlOAuthToken :: Lens' EditsTracksList' (Maybe OAuthToken)
etlOAuthToken
  = lens _etlOAuthToken
      (\ s a -> s{_etlOAuthToken = a})

-- | Unique identifier for this edit.
etlEditId :: Lens' EditsTracksList' Text
etlEditId
  = lens _etlEditId (\ s a -> s{_etlEditId = a})

-- | Selector specifying which fields to include in a partial response.
etlFields :: Lens' EditsTracksList' (Maybe Text)
etlFields
  = lens _etlFields (\ s a -> s{_etlFields = a})

instance GoogleAuth EditsTracksList' where
        _AuthKey = etlKey . _Just
        _AuthToken = etlOAuthToken . _Just

instance GoogleRequest EditsTracksList' where
        type Rs EditsTracksList' = TracksListResponse
        request = requestWith androidPublisherRequest
        requestWith rq EditsTracksList'{..}
          = go _etlPackageName _etlEditId _etlQuotaUser
              (Just _etlPrettyPrint)
              _etlUserIP
              _etlFields
              _etlKey
              _etlOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy EditsTracksListResource)
                      rq
