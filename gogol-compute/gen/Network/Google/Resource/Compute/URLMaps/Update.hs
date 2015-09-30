{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.URLMaps.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the UrlMap resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsUpdate@.
module Compute.URLMaps.Update
    (
    -- * REST Resource
      UrlMapsUpdateAPI

    -- * Creating a Request
    , uRLMapsUpdate
    , URLMapsUpdate

    -- * Request Lenses
    , umuQuotaUser
    , umuUrlMap
    , umuPrettyPrint
    , umuProject
    , umuUserIp
    , umuKey
    , umuOauthToken
    , umuFields
    , umuAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsUpdate@ which the
-- 'URLMapsUpdate' request conforms to.
type UrlMapsUpdateAPI =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :> Put '[JSON] Operation

-- | Update the entire content of the UrlMap resource.
--
-- /See:/ 'uRLMapsUpdate' smart constructor.
data URLMapsUpdate = URLMapsUpdate
    { _umuQuotaUser   :: !(Maybe Text)
    , _umuUrlMap      :: !Text
    , _umuPrettyPrint :: !Bool
    , _umuProject     :: !Text
    , _umuUserIp      :: !(Maybe Text)
    , _umuKey         :: !(Maybe Text)
    , _umuOauthToken  :: !(Maybe Text)
    , _umuFields      :: !(Maybe Text)
    , _umuAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umuQuotaUser'
--
-- * 'umuUrlMap'
--
-- * 'umuPrettyPrint'
--
-- * 'umuProject'
--
-- * 'umuUserIp'
--
-- * 'umuKey'
--
-- * 'umuOauthToken'
--
-- * 'umuFields'
--
-- * 'umuAlt'
uRLMapsUpdate
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsUpdate
uRLMapsUpdate pUmuUrlMap_ pUmuProject_ =
    URLMapsUpdate
    { _umuQuotaUser = Nothing
    , _umuUrlMap = pUmuUrlMap_
    , _umuPrettyPrint = True
    , _umuProject = pUmuProject_
    , _umuUserIp = Nothing
    , _umuKey = Nothing
    , _umuOauthToken = Nothing
    , _umuFields = Nothing
    , _umuAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umuQuotaUser :: Lens' URLMapsUpdate' (Maybe Text)
umuQuotaUser
  = lens _umuQuotaUser (\ s a -> s{_umuQuotaUser = a})

-- | Name of the UrlMap resource to update.
umuUrlMap :: Lens' URLMapsUpdate' Text
umuUrlMap
  = lens _umuUrlMap (\ s a -> s{_umuUrlMap = a})

-- | Returns response with indentations and line breaks.
umuPrettyPrint :: Lens' URLMapsUpdate' Bool
umuPrettyPrint
  = lens _umuPrettyPrint
      (\ s a -> s{_umuPrettyPrint = a})

-- | Name of the project scoping this request.
umuProject :: Lens' URLMapsUpdate' Text
umuProject
  = lens _umuProject (\ s a -> s{_umuProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umuUserIp :: Lens' URLMapsUpdate' (Maybe Text)
umuUserIp
  = lens _umuUserIp (\ s a -> s{_umuUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umuKey :: Lens' URLMapsUpdate' (Maybe Text)
umuKey = lens _umuKey (\ s a -> s{_umuKey = a})

-- | OAuth 2.0 token for the current user.
umuOauthToken :: Lens' URLMapsUpdate' (Maybe Text)
umuOauthToken
  = lens _umuOauthToken
      (\ s a -> s{_umuOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
umuFields :: Lens' URLMapsUpdate' (Maybe Text)
umuFields
  = lens _umuFields (\ s a -> s{_umuFields = a})

-- | Data format for the response.
umuAlt :: Lens' URLMapsUpdate' Text
umuAlt = lens _umuAlt (\ s a -> s{_umuAlt = a})

instance GoogleRequest URLMapsUpdate' where
        type Rs URLMapsUpdate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsUpdate{..}
          = go _umuQuotaUser _umuUrlMap _umuPrettyPrint
              _umuProject
              _umuUserIp
              _umuKey
              _umuOauthToken
              _umuFields
              _umuAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UrlMapsUpdateAPI) r
                      u
