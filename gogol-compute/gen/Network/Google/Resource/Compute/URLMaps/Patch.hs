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
-- Module      : Network.Google.Resource.Compute.URLMaps.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Update the entire content of the UrlMap resource. This method supports
-- patch semantics.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeURLMapsPatch@.
module Network.Google.Resource.Compute.URLMaps.Patch
    (
    -- * REST Resource
      UrlMapsPatchResource

    -- * Creating a Request
    , uRLMapsPatch'
    , URLMapsPatch'

    -- * Request Lenses
    , umpQuotaUser
    , umpUrlMap
    , umpPrettyPrint
    , umpProject
    , umpUserIp
    , umpKey
    , umpOauthToken
    , umpFields
    , umpAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeURLMapsPatch@ which the
-- 'URLMapsPatch'' request conforms to.
type UrlMapsPatchResource =
     Capture "project" Text :>
       "global" :>
         "urlMaps" :>
           Capture "urlMap" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Patch '[JSON] Operation

-- | Update the entire content of the UrlMap resource. This method supports
-- patch semantics.
--
-- /See:/ 'uRLMapsPatch'' smart constructor.
data URLMapsPatch' = URLMapsPatch'
    { _umpQuotaUser   :: !(Maybe Text)
    , _umpUrlMap      :: !Text
    , _umpPrettyPrint :: !Bool
    , _umpProject     :: !Text
    , _umpUserIp      :: !(Maybe Text)
    , _umpKey         :: !(Maybe Text)
    , _umpOauthToken  :: !(Maybe Text)
    , _umpFields      :: !(Maybe Text)
    , _umpAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'URLMapsPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'umpQuotaUser'
--
-- * 'umpUrlMap'
--
-- * 'umpPrettyPrint'
--
-- * 'umpProject'
--
-- * 'umpUserIp'
--
-- * 'umpKey'
--
-- * 'umpOauthToken'
--
-- * 'umpFields'
--
-- * 'umpAlt'
uRLMapsPatch'
    :: Text -- ^ 'urlMap'
    -> Text -- ^ 'project'
    -> URLMapsPatch'
uRLMapsPatch' pUmpUrlMap_ pUmpProject_ =
    URLMapsPatch'
    { _umpQuotaUser = Nothing
    , _umpUrlMap = pUmpUrlMap_
    , _umpPrettyPrint = True
    , _umpProject = pUmpProject_
    , _umpUserIp = Nothing
    , _umpKey = Nothing
    , _umpOauthToken = Nothing
    , _umpFields = Nothing
    , _umpAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
umpQuotaUser :: Lens' URLMapsPatch' (Maybe Text)
umpQuotaUser
  = lens _umpQuotaUser (\ s a -> s{_umpQuotaUser = a})

-- | Name of the UrlMap resource to update.
umpUrlMap :: Lens' URLMapsPatch' Text
umpUrlMap
  = lens _umpUrlMap (\ s a -> s{_umpUrlMap = a})

-- | Returns response with indentations and line breaks.
umpPrettyPrint :: Lens' URLMapsPatch' Bool
umpPrettyPrint
  = lens _umpPrettyPrint
      (\ s a -> s{_umpPrettyPrint = a})

-- | Name of the project scoping this request.
umpProject :: Lens' URLMapsPatch' Text
umpProject
  = lens _umpProject (\ s a -> s{_umpProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
umpUserIp :: Lens' URLMapsPatch' (Maybe Text)
umpUserIp
  = lens _umpUserIp (\ s a -> s{_umpUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
umpKey :: Lens' URLMapsPatch' (Maybe Text)
umpKey = lens _umpKey (\ s a -> s{_umpKey = a})

-- | OAuth 2.0 token for the current user.
umpOauthToken :: Lens' URLMapsPatch' (Maybe Text)
umpOauthToken
  = lens _umpOauthToken
      (\ s a -> s{_umpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
umpFields :: Lens' URLMapsPatch' (Maybe Text)
umpFields
  = lens _umpFields (\ s a -> s{_umpFields = a})

-- | Data format for the response.
umpAlt :: Lens' URLMapsPatch' Alt
umpAlt = lens _umpAlt (\ s a -> s{_umpAlt = a})

instance GoogleRequest URLMapsPatch' where
        type Rs URLMapsPatch' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u URLMapsPatch'{..}
          = go _umpQuotaUser _umpUrlMap (Just _umpPrettyPrint)
              _umpProject
              _umpUserIp
              _umpKey
              _umpOauthToken
              _umpFields
              (Just _umpAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy UrlMapsPatchResource)
                      r
                      u
