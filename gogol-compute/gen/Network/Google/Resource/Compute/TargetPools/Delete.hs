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
-- Module      : Network.Google.Resource.Compute.TargetPools.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified TargetPool resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsDelete@.
module Network.Google.Resource.Compute.TargetPools.Delete
    (
    -- * REST Resource
      TargetPoolsDeleteResource

    -- * Creating a Request
    , targetPoolsDelete'
    , TargetPoolsDelete'

    -- * Request Lenses
    , tpdQuotaUser
    , tpdPrettyPrint
    , tpdProject
    , tpdTargetPool
    , tpdUserIP
    , tpdKey
    , tpdRegion
    , tpdOAuthToken
    , tpdFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsDelete@ which the
-- 'TargetPoolsDelete'' request conforms to.
type TargetPoolsDeleteResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] Operation

-- | Deletes the specified TargetPool resource.
--
-- /See:/ 'targetPoolsDelete'' smart constructor.
data TargetPoolsDelete' = TargetPoolsDelete'
    { _tpdQuotaUser   :: !(Maybe Text)
    , _tpdPrettyPrint :: !Bool
    , _tpdProject     :: !Text
    , _tpdTargetPool  :: !Text
    , _tpdUserIP      :: !(Maybe Text)
    , _tpdKey         :: !(Maybe AuthKey)
    , _tpdRegion      :: !Text
    , _tpdOAuthToken  :: !(Maybe OAuthToken)
    , _tpdFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpdQuotaUser'
--
-- * 'tpdPrettyPrint'
--
-- * 'tpdProject'
--
-- * 'tpdTargetPool'
--
-- * 'tpdUserIP'
--
-- * 'tpdKey'
--
-- * 'tpdRegion'
--
-- * 'tpdOAuthToken'
--
-- * 'tpdFields'
targetPoolsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> Text -- ^ 'region'
    -> TargetPoolsDelete'
targetPoolsDelete' pTpdProject_ pTpdTargetPool_ pTpdRegion_ =
    TargetPoolsDelete'
    { _tpdQuotaUser = Nothing
    , _tpdPrettyPrint = True
    , _tpdProject = pTpdProject_
    , _tpdTargetPool = pTpdTargetPool_
    , _tpdUserIP = Nothing
    , _tpdKey = Nothing
    , _tpdRegion = pTpdRegion_
    , _tpdOAuthToken = Nothing
    , _tpdFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpdQuotaUser :: Lens' TargetPoolsDelete' (Maybe Text)
tpdQuotaUser
  = lens _tpdQuotaUser (\ s a -> s{_tpdQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpdPrettyPrint :: Lens' TargetPoolsDelete' Bool
tpdPrettyPrint
  = lens _tpdPrettyPrint
      (\ s a -> s{_tpdPrettyPrint = a})

-- | Name of the project scoping this request.
tpdProject :: Lens' TargetPoolsDelete' Text
tpdProject
  = lens _tpdProject (\ s a -> s{_tpdProject = a})

-- | Name of the TargetPool resource to delete.
tpdTargetPool :: Lens' TargetPoolsDelete' Text
tpdTargetPool
  = lens _tpdTargetPool
      (\ s a -> s{_tpdTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpdUserIP :: Lens' TargetPoolsDelete' (Maybe Text)
tpdUserIP
  = lens _tpdUserIP (\ s a -> s{_tpdUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpdKey :: Lens' TargetPoolsDelete' (Maybe AuthKey)
tpdKey = lens _tpdKey (\ s a -> s{_tpdKey = a})

-- | Name of the region scoping this request.
tpdRegion :: Lens' TargetPoolsDelete' Text
tpdRegion
  = lens _tpdRegion (\ s a -> s{_tpdRegion = a})

-- | OAuth 2.0 token for the current user.
tpdOAuthToken :: Lens' TargetPoolsDelete' (Maybe OAuthToken)
tpdOAuthToken
  = lens _tpdOAuthToken
      (\ s a -> s{_tpdOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpdFields :: Lens' TargetPoolsDelete' (Maybe Text)
tpdFields
  = lens _tpdFields (\ s a -> s{_tpdFields = a})

instance GoogleAuth TargetPoolsDelete' where
        authKey = tpdKey . _Just
        authToken = tpdOAuthToken . _Just

instance GoogleRequest TargetPoolsDelete' where
        type Rs TargetPoolsDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsDelete'{..}
          = go _tpdProject _tpdRegion _tpdTargetPool
              _tpdQuotaUser
              (Just _tpdPrettyPrint)
              _tpdUserIP
              _tpdFields
              _tpdKey
              _tpdOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsDeleteResource)
                      r
                      u
