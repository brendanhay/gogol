{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Mapsengine.Rasters.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified rasters.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsengineRastersParentsList@.
module Mapsengine.Rasters.Parents.List
    (
    -- * REST Resource
      RastersParentsListAPI

    -- * Creating a Request
    , rastersParentsList
    , RastersParentsList

    -- * Request Lenses
    , rplQuotaUser
    , rplPrettyPrint
    , rplUserIp
    , rplKey
    , rplId
    , rplPageToken
    , rplOauthToken
    , rplMaxResults
    , rplFields
    , rplAlt
    ) where

import           Network.Google.MapEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsengineRastersParentsList@ which the
-- 'RastersParentsList' request conforms to.
type RastersParentsListAPI =
     "rasters" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified rasters.
--
-- /See:/ 'rastersParentsList' smart constructor.
data RastersParentsList = RastersParentsList
    { _rplQuotaUser   :: !(Maybe Text)
    , _rplPrettyPrint :: !Bool
    , _rplUserIp      :: !(Maybe Text)
    , _rplKey         :: !(Maybe Text)
    , _rplId          :: !Text
    , _rplPageToken   :: !(Maybe Text)
    , _rplOauthToken  :: !(Maybe Text)
    , _rplMaxResults  :: !(Maybe Word32)
    , _rplFields      :: !(Maybe Text)
    , _rplAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rplQuotaUser'
--
-- * 'rplPrettyPrint'
--
-- * 'rplUserIp'
--
-- * 'rplKey'
--
-- * 'rplId'
--
-- * 'rplPageToken'
--
-- * 'rplOauthToken'
--
-- * 'rplMaxResults'
--
-- * 'rplFields'
--
-- * 'rplAlt'
rastersParentsList
    :: Text -- ^ 'id'
    -> RastersParentsList
rastersParentsList pRplId_ =
    RastersParentsList
    { _rplQuotaUser = Nothing
    , _rplPrettyPrint = True
    , _rplUserIp = Nothing
    , _rplKey = Nothing
    , _rplId = pRplId_
    , _rplPageToken = Nothing
    , _rplOauthToken = Nothing
    , _rplMaxResults = Nothing
    , _rplFields = Nothing
    , _rplAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rplQuotaUser :: Lens' RastersParentsList' (Maybe Text)
rplQuotaUser
  = lens _rplQuotaUser (\ s a -> s{_rplQuotaUser = a})

-- | Returns response with indentations and line breaks.
rplPrettyPrint :: Lens' RastersParentsList' Bool
rplPrettyPrint
  = lens _rplPrettyPrint
      (\ s a -> s{_rplPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rplUserIp :: Lens' RastersParentsList' (Maybe Text)
rplUserIp
  = lens _rplUserIp (\ s a -> s{_rplUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rplKey :: Lens' RastersParentsList' (Maybe Text)
rplKey = lens _rplKey (\ s a -> s{_rplKey = a})

-- | The ID of the rasters whose parents will be listed.
rplId :: Lens' RastersParentsList' Text
rplId = lens _rplId (\ s a -> s{_rplId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rplPageToken :: Lens' RastersParentsList' (Maybe Text)
rplPageToken
  = lens _rplPageToken (\ s a -> s{_rplPageToken = a})

-- | OAuth 2.0 token for the current user.
rplOauthToken :: Lens' RastersParentsList' (Maybe Text)
rplOauthToken
  = lens _rplOauthToken
      (\ s a -> s{_rplOauthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
rplMaxResults :: Lens' RastersParentsList' (Maybe Word32)
rplMaxResults
  = lens _rplMaxResults
      (\ s a -> s{_rplMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rplFields :: Lens' RastersParentsList' (Maybe Text)
rplFields
  = lens _rplFields (\ s a -> s{_rplFields = a})

-- | Data format for the response.
rplAlt :: Lens' RastersParentsList' Text
rplAlt = lens _rplAlt (\ s a -> s{_rplAlt = a})

instance GoogleRequest RastersParentsList' where
        type Rs RastersParentsList' = ParentsListResponse
        request = requestWithRoute defReq mapEngineURL
        requestWithRoute r u RastersParentsList{..}
          = go _rplQuotaUser _rplPrettyPrint _rplUserIp _rplKey
              _rplId
              _rplPageToken
              _rplOauthToken
              _rplMaxResults
              _rplFields
              _rplAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersParentsListAPI)
                      r
                      u
