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
-- Module      : Network.Google.Resource.MapsEngine.Rasters.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified rasters.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineRastersParentsList@.
module Network.Google.Resource.MapsEngine.Rasters.Parents.List
    (
    -- * REST Resource
      RastersParentsListResource

    -- * Creating a Request
    , rastersParentsList'
    , RastersParentsList'

    -- * Request Lenses
    , rasQuotaUser
    , rasPrettyPrint
    , rasUserIP
    , rasKey
    , rasId
    , rasPageToken
    , rasOAuthToken
    , rasMaxResults
    , rasFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineRastersParentsList@ which the
-- 'RastersParentsList'' request conforms to.
type RastersParentsListResource =
     "rasters" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Key :>
                   QueryParam "pageToken" Text :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "maxResults" Word32 :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified rasters.
--
-- /See:/ 'rastersParentsList'' smart constructor.
data RastersParentsList' = RastersParentsList'
    { _rasQuotaUser   :: !(Maybe Text)
    , _rasPrettyPrint :: !Bool
    , _rasUserIP      :: !(Maybe Text)
    , _rasKey         :: !(Maybe Key)
    , _rasId          :: !Text
    , _rasPageToken   :: !(Maybe Text)
    , _rasOAuthToken  :: !(Maybe OAuthToken)
    , _rasMaxResults  :: !(Maybe Word32)
    , _rasFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'RastersParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rasQuotaUser'
--
-- * 'rasPrettyPrint'
--
-- * 'rasUserIP'
--
-- * 'rasKey'
--
-- * 'rasId'
--
-- * 'rasPageToken'
--
-- * 'rasOAuthToken'
--
-- * 'rasMaxResults'
--
-- * 'rasFields'
rastersParentsList'
    :: Text -- ^ 'id'
    -> RastersParentsList'
rastersParentsList' pRasId_ =
    RastersParentsList'
    { _rasQuotaUser = Nothing
    , _rasPrettyPrint = True
    , _rasUserIP = Nothing
    , _rasKey = Nothing
    , _rasId = pRasId_
    , _rasPageToken = Nothing
    , _rasOAuthToken = Nothing
    , _rasMaxResults = Nothing
    , _rasFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rasQuotaUser :: Lens' RastersParentsList' (Maybe Text)
rasQuotaUser
  = lens _rasQuotaUser (\ s a -> s{_rasQuotaUser = a})

-- | Returns response with indentations and line breaks.
rasPrettyPrint :: Lens' RastersParentsList' Bool
rasPrettyPrint
  = lens _rasPrettyPrint
      (\ s a -> s{_rasPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rasUserIP :: Lens' RastersParentsList' (Maybe Text)
rasUserIP
  = lens _rasUserIP (\ s a -> s{_rasUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rasKey :: Lens' RastersParentsList' (Maybe Key)
rasKey = lens _rasKey (\ s a -> s{_rasKey = a})

-- | The ID of the rasters whose parents will be listed.
rasId :: Lens' RastersParentsList' Text
rasId = lens _rasId (\ s a -> s{_rasId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
rasPageToken :: Lens' RastersParentsList' (Maybe Text)
rasPageToken
  = lens _rasPageToken (\ s a -> s{_rasPageToken = a})

-- | OAuth 2.0 token for the current user.
rasOAuthToken :: Lens' RastersParentsList' (Maybe OAuthToken)
rasOAuthToken
  = lens _rasOAuthToken
      (\ s a -> s{_rasOAuthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
rasMaxResults :: Lens' RastersParentsList' (Maybe Word32)
rasMaxResults
  = lens _rasMaxResults
      (\ s a -> s{_rasMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
rasFields :: Lens' RastersParentsList' (Maybe Text)
rasFields
  = lens _rasFields (\ s a -> s{_rasFields = a})

instance GoogleAuth RastersParentsList' where
        authKey = rasKey . _Just
        authToken = rasOAuthToken . _Just

instance GoogleRequest RastersParentsList' where
        type Rs RastersParentsList' = ParentsListResponse
        request = requestWithRoute defReq mapsEngineURL
        requestWithRoute r u RastersParentsList'{..}
          = go _rasQuotaUser (Just _rasPrettyPrint) _rasUserIP
              _rasKey
              _rasId
              _rasPageToken
              _rasOAuthToken
              _rasMaxResults
              _rasFields
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy RastersParentsListResource)
                      r
                      u
