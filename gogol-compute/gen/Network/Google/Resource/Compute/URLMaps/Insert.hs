{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.URLMaps.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsInsert@.
module Compute.URLMaps.Insert
    (
    -- * REST Resource
      UrlMapsInsertAPI

    -- * Creating a Request
    , uRLMapsInsert
    , URLMapsInsert

    -- * Request Lenses
    , umiQuotaUser
    , umiPrettyPrint
    , umiProject
    , umiUserIp
    , umiKey
    , umiOauthToken
    , umiFields
    , umiAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsInsert@ which the
-- 'URLMapsInsert' request conforms to.
type UrlMapsInsertAPI =
     Capture "project" Text :>
       "global" :> "urlMaps" :> Post '[JSON] Operation

-- | Creates a UrlMap resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'uRLMapsInsert' smart constructor.
data URLMapsInsert = URLMapsInsert
    { _umiQuotaUser   :: !(Maybe Text)
    , _umiPrettyPrint :: !Bool
    , _umiProject     :: !Text
    , _umiUserIp      :: !(Maybe Text)
    , _umiKey         :: !(Maybe Text)
    , _umiOauthToken  :: !(Maybe Text)
    , _umiFields      :: !(Maybe Text)
    , _umiAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umiQuotaUser'
--
-- * 'umiPrettyPrint'
--
-- * 'umiProject'
--
-- * 'umiUserIp'
--
-- * 'umiKey'
--
-- * 'umiOauthToken'
--
-- * 'umiFields'
--
-- * 'umiAlt'
uRLMapsInsert
    :: Text -- ^ 'project'
    -> URLMapsInsert
uRLMapsInsert pUmiProject_ =
    URLMapsInsert
    { _umiQuotaUser = Nothing
    , _umiPrettyPrint = True
    , _umiProject = pUmiProject_
    , _umiUserIp = Nothing
    , _umiKey = Nothing
    , _umiOauthToken = Nothing
    , _umiFields = Nothing
    , _umiAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umiQuotaUser :: Lens' URLMapsInsert' (Maybe Text)
umiQuotaUser
  = lens _umiQuotaUser (\ s a -> s{_umiQuotaUser = a})

-- | Returns response with indentations and line breaks.
umiPrettyPrint :: Lens' URLMapsInsert' Bool
umiPrettyPrint
  = lens _umiPrettyPrint
      (\ s a -> s{_umiPrettyPrint = a})

-- | Name of the project scoping this request.
umiProject :: Lens' URLMapsInsert' Text
umiProject
  = lens _umiProject (\ s a -> s{_umiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umiUserIp :: Lens' URLMapsInsert' (Maybe Text)
umiUserIp
  = lens _umiUserIp (\ s a -> s{_umiUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umiKey :: Lens' URLMapsInsert' (Maybe Text)
umiKey = lens _umiKey (\ s a -> s{_umiKey = a})

-- | OAuth 2.0 token for the current user.
umiOauthToken :: Lens' URLMapsInsert' (Maybe Text)
umiOauthToken
  = lens _umiOauthToken
      (\ s a -> s{_umiOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
umiFields :: Lens' URLMapsInsert' (Maybe Text)
umiFields
  = lens _umiFields (\ s a -> s{_umiFields = a})

-- | Data format for the response.
umiAlt :: Lens' URLMapsInsert' Text
umiAlt = lens _umiAlt (\ s a -> s{_umiAlt = a})

instance GoogleRequest URLMapsInsert' where
        type Rs URLMapsInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsInsert{..}
          = go _umiQuotaUser _umiPrettyPrint _umiProject
              _umiUserIp
              _umiKey
              _umiOauthToken
              _umiFields
              _umiAlt
          where go
                  = clientWithRoute (Proxy :: Proxy UrlMapsInsertAPI) r
                      u
