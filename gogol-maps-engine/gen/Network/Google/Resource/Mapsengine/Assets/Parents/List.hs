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
-- Module      : Network.Google.Resource.Mapsengine.Assets.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineAssetsParentsList@.
module Network.Google.Resource.Mapsengine.Assets.Parents.List
    (
    -- * REST Resource
      AssetsParentsListResource

    -- * Creating a Request
    , assetsParentsList'
    , AssetsParentsList'

    -- * Request Lenses
    , assQuotaUser
    , assPrettyPrint
    , assUserIp
    , assKey
    , assId
    , assPageToken
    , assOauthToken
    , assMaxResults
    , assFields
    , assAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineAssetsParentsList@ which the
-- 'AssetsParentsList'' request conforms to.
type AssetsParentsListResource =
     "assets" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :>
                             Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified asset.
--
-- /See:/ 'assetsParentsList'' smart constructor.
data AssetsParentsList' = AssetsParentsList'
    { _assQuotaUser   :: !(Maybe Text)
    , _assPrettyPrint :: !Bool
    , _assUserIp      :: !(Maybe Text)
    , _assKey         :: !(Maybe Text)
    , _assId          :: !Text
    , _assPageToken   :: !(Maybe Text)
    , _assOauthToken  :: !(Maybe Text)
    , _assMaxResults  :: !(Maybe Word32)
    , _assFields      :: !(Maybe Text)
    , _assAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assQuotaUser'
--
-- * 'assPrettyPrint'
--
-- * 'assUserIp'
--
-- * 'assKey'
--
-- * 'assId'
--
-- * 'assPageToken'
--
-- * 'assOauthToken'
--
-- * 'assMaxResults'
--
-- * 'assFields'
--
-- * 'assAlt'
assetsParentsList'
    :: Text -- ^ 'id'
    -> AssetsParentsList'
assetsParentsList' pAssId_ =
    AssetsParentsList'
    { _assQuotaUser = Nothing
    , _assPrettyPrint = True
    , _assUserIp = Nothing
    , _assKey = Nothing
    , _assId = pAssId_
    , _assPageToken = Nothing
    , _assOauthToken = Nothing
    , _assMaxResults = Nothing
    , _assFields = Nothing
    , _assAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
assQuotaUser :: Lens' AssetsParentsList' (Maybe Text)
assQuotaUser
  = lens _assQuotaUser (\ s a -> s{_assQuotaUser = a})

-- | Returns response with indentations and line breaks.
assPrettyPrint :: Lens' AssetsParentsList' Bool
assPrettyPrint
  = lens _assPrettyPrint
      (\ s a -> s{_assPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
assUserIp :: Lens' AssetsParentsList' (Maybe Text)
assUserIp
  = lens _assUserIp (\ s a -> s{_assUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assKey :: Lens' AssetsParentsList' (Maybe Text)
assKey = lens _assKey (\ s a -> s{_assKey = a})

-- | The ID of the asset whose parents will be listed.
assId :: Lens' AssetsParentsList' Text
assId = lens _assId (\ s a -> s{_assId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
assPageToken :: Lens' AssetsParentsList' (Maybe Text)
assPageToken
  = lens _assPageToken (\ s a -> s{_assPageToken = a})

-- | OAuth 2.0 token for the current user.
assOauthToken :: Lens' AssetsParentsList' (Maybe Text)
assOauthToken
  = lens _assOauthToken
      (\ s a -> s{_assOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
assMaxResults :: Lens' AssetsParentsList' (Maybe Word32)
assMaxResults
  = lens _assMaxResults
      (\ s a -> s{_assMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
assFields :: Lens' AssetsParentsList' (Maybe Text)
assFields
  = lens _assFields (\ s a -> s{_assFields = a})

-- | Data format for the response.
assAlt :: Lens' AssetsParentsList' Alt
assAlt = lens _assAlt (\ s a -> s{_assAlt = a})

instance GoogleRequest AssetsParentsList' where
        type Rs AssetsParentsList' = ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u AssetsParentsList'{..}
          = go _assQuotaUser (Just _assPrettyPrint) _assUserIp
              _assKey
              _assId
              _assPageToken
              _assOauthToken
              _assMaxResults
              _assFields
              (Just _assAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssetsParentsListResource)
                      r
                      u
