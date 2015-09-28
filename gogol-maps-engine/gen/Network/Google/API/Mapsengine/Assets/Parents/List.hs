{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Mapsengine.Assets.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.assets.parents.list@.
module Network.Google.API.Mapsengine.Assets.Parents.List
    (
    -- * REST Resource
      AssetsParentsListAPI

    -- * Creating a Request
    , assetsParentsList'
    , AssetsParentsList'

    -- * Request Lenses
    , aplQuotaUser
    , aplPrettyPrint
    , aplUserIp
    , aplKey
    , aplId
    , aplPageToken
    , aplOauthToken
    , aplMaxResults
    , aplFields
    , aplAlt
    ) where

import           Network.Google.Map.Engine.Types
import           Network.Google.Prelude

-- | A resource alias for mapsengine.assets.parents.list which the
-- 'AssetsParentsList'' request conforms to.
type AssetsParentsListAPI =
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
    { _aplQuotaUser   :: !(Maybe Text)
    , _aplPrettyPrint :: !Bool
    , _aplUserIp      :: !(Maybe Text)
    , _aplKey         :: !(Maybe Text)
    , _aplId          :: !Text
    , _aplPageToken   :: !(Maybe Text)
    , _aplOauthToken  :: !(Maybe Text)
    , _aplMaxResults  :: !(Maybe Word32)
    , _aplFields      :: !(Maybe Text)
    , _aplAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aplQuotaUser'
--
-- * 'aplPrettyPrint'
--
-- * 'aplUserIp'
--
-- * 'aplKey'
--
-- * 'aplId'
--
-- * 'aplPageToken'
--
-- * 'aplOauthToken'
--
-- * 'aplMaxResults'
--
-- * 'aplFields'
--
-- * 'aplAlt'
assetsParentsList'
    :: Text -- ^ 'id'
    -> AssetsParentsList'
assetsParentsList' pAplId_ =
    AssetsParentsList'
    { _aplQuotaUser = Nothing
    , _aplPrettyPrint = True
    , _aplUserIp = Nothing
    , _aplKey = Nothing
    , _aplId = pAplId_
    , _aplPageToken = Nothing
    , _aplOauthToken = Nothing
    , _aplMaxResults = Nothing
    , _aplFields = Nothing
    , _aplAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aplQuotaUser :: Lens' AssetsParentsList' (Maybe Text)
aplQuotaUser
  = lens _aplQuotaUser (\ s a -> s{_aplQuotaUser = a})

-- | Returns response with indentations and line breaks.
aplPrettyPrint :: Lens' AssetsParentsList' Bool
aplPrettyPrint
  = lens _aplPrettyPrint
      (\ s a -> s{_aplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aplUserIp :: Lens' AssetsParentsList' (Maybe Text)
aplUserIp
  = lens _aplUserIp (\ s a -> s{_aplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aplKey :: Lens' AssetsParentsList' (Maybe Text)
aplKey = lens _aplKey (\ s a -> s{_aplKey = a})

-- | The ID of the asset whose parents will be listed.
aplId :: Lens' AssetsParentsList' Text
aplId = lens _aplId (\ s a -> s{_aplId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
aplPageToken :: Lens' AssetsParentsList' (Maybe Text)
aplPageToken
  = lens _aplPageToken (\ s a -> s{_aplPageToken = a})

-- | OAuth 2.0 token for the current user.
aplOauthToken :: Lens' AssetsParentsList' (Maybe Text)
aplOauthToken
  = lens _aplOauthToken
      (\ s a -> s{_aplOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
aplMaxResults :: Lens' AssetsParentsList' (Maybe Word32)
aplMaxResults
  = lens _aplMaxResults
      (\ s a -> s{_aplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aplFields :: Lens' AssetsParentsList' (Maybe Text)
aplFields
  = lens _aplFields (\ s a -> s{_aplFields = a})

-- | Data format for the response.
aplAlt :: Lens' AssetsParentsList' Alt
aplAlt = lens _aplAlt (\ s a -> s{_aplAlt = a})

instance GoogleRequest AssetsParentsList' where
        type Rs AssetsParentsList' = ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u AssetsParentsList'{..}
          = go _aplQuotaUser (Just _aplPrettyPrint) _aplUserIp
              _aplKey
              _aplId
              _aplPageToken
              _aplOauthToken
              _aplMaxResults
              _aplFields
              (Just _aplAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AssetsParentsListAPI)
                      r
                      u
