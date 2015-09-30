{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidpublisher.Edits.Tracks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all the track configurations for this edit.
--
-- /See:/ <https://developers.google.com/android-publisher Google Play Developer API Reference> for @AndroidpublisherEditsTracksList@.
module Network.Google.Resource.Androidpublisher.Edits.Tracks.List
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
    , etlUserIp
    , etlKey
    , etlOauthToken
    , etlEditId
    , etlFields
    , etlAlt
    ) where

import           Network.Google.PlayDeveloper.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidpublisherEditsTracksList@ which the
-- 'EditsTracksList'' request conforms to.
type EditsTracksListResource =
     Capture "packageName" Text :>
       "edits" :>
         Capture "editId" Text :>
           "tracks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :>
                           Get '[JSON] TracksListResponse

-- | Lists all the track configurations for this edit.
--
-- /See:/ 'editsTracksList'' smart constructor.
data EditsTracksList' = EditsTracksList'
    { _etlQuotaUser   :: !(Maybe Text)
    , _etlPrettyPrint :: !Bool
    , _etlPackageName :: !Text
    , _etlUserIp      :: !(Maybe Text)
    , _etlKey         :: !(Maybe Text)
    , _etlOauthToken  :: !(Maybe Text)
    , _etlEditId      :: !Text
    , _etlFields      :: !(Maybe Text)
    , _etlAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'etlUserIp'
--
-- * 'etlKey'
--
-- * 'etlOauthToken'
--
-- * 'etlEditId'
--
-- * 'etlFields'
--
-- * 'etlAlt'
editsTracksList'
    :: Text -- ^ 'packageName'
    -> Text -- ^ 'editId'
    -> EditsTracksList'
editsTracksList' pEtlPackageName_ pEtlEditId_ =
    EditsTracksList'
    { _etlQuotaUser = Nothing
    , _etlPrettyPrint = True
    , _etlPackageName = pEtlPackageName_
    , _etlUserIp = Nothing
    , _etlKey = Nothing
    , _etlOauthToken = Nothing
    , _etlEditId = pEtlEditId_
    , _etlFields = Nothing
    , _etlAlt = JSON
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
etlUserIp :: Lens' EditsTracksList' (Maybe Text)
etlUserIp
  = lens _etlUserIp (\ s a -> s{_etlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
etlKey :: Lens' EditsTracksList' (Maybe Text)
etlKey = lens _etlKey (\ s a -> s{_etlKey = a})

-- | OAuth 2.0 token for the current user.
etlOauthToken :: Lens' EditsTracksList' (Maybe Text)
etlOauthToken
  = lens _etlOauthToken
      (\ s a -> s{_etlOauthToken = a})

-- | Unique identifier for this edit.
etlEditId :: Lens' EditsTracksList' Text
etlEditId
  = lens _etlEditId (\ s a -> s{_etlEditId = a})

-- | Selector specifying which fields to include in a partial response.
etlFields :: Lens' EditsTracksList' (Maybe Text)
etlFields
  = lens _etlFields (\ s a -> s{_etlFields = a})

-- | Data format for the response.
etlAlt :: Lens' EditsTracksList' Alt
etlAlt = lens _etlAlt (\ s a -> s{_etlAlt = a})

instance GoogleRequest EditsTracksList' where
        type Rs EditsTracksList' = TracksListResponse
        request = requestWithRoute defReq playDeveloperURL
        requestWithRoute r u EditsTracksList'{..}
          = go _etlQuotaUser (Just _etlPrettyPrint)
              _etlPackageName
              _etlUserIp
              _etlKey
              _etlOauthToken
              _etlEditId
              _etlFields
              (Just _etlAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy EditsTracksListResource)
                      r
                      u
