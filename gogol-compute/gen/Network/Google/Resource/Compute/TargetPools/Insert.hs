{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.TargetPools.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a TargetPool resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsInsert@.
module Network.Google.Resource.Compute.TargetPools.Insert
    (
    -- * REST Resource
      TargetPoolsInsertResource

    -- * Creating a Request
    , targetPoolsInsert'
    , TargetPoolsInsert'

    -- * Request Lenses
    , tpiQuotaUser
    , tpiPrettyPrint
    , tpiProject
    , tpiUserIP
    , tpiPayload
    , tpiKey
    , tpiRegion
    , tpiOAuthToken
    , tpiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsInsert@ which the
-- 'TargetPoolsInsert'' request conforms to.
type TargetPoolsInsertResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TargetPool :> Post '[JSON] Operation

-- | Creates a TargetPool resource in the specified project and region using
-- the data included in the request.
--
-- /See:/ 'targetPoolsInsert'' smart constructor.
data TargetPoolsInsert' = TargetPoolsInsert'
    { _tpiQuotaUser   :: !(Maybe Text)
    , _tpiPrettyPrint :: !Bool
    , _tpiProject     :: !Text
    , _tpiUserIP      :: !(Maybe Text)
    , _tpiPayload     :: !TargetPool
    , _tpiKey         :: !(Maybe Key)
    , _tpiRegion      :: !Text
    , _tpiOAuthToken  :: !(Maybe OAuthToken)
    , _tpiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpiQuotaUser'
--
-- * 'tpiPrettyPrint'
--
-- * 'tpiProject'
--
-- * 'tpiUserIP'
--
-- * 'tpiPayload'
--
-- * 'tpiKey'
--
-- * 'tpiRegion'
--
-- * 'tpiOAuthToken'
--
-- * 'tpiFields'
targetPoolsInsert'
    :: Text -- ^ 'project'
    -> TargetPool -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetPoolsInsert'
targetPoolsInsert' pTpiProject_ pTpiPayload_ pTpiRegion_ =
    TargetPoolsInsert'
    { _tpiQuotaUser = Nothing
    , _tpiPrettyPrint = True
    , _tpiProject = pTpiProject_
    , _tpiUserIP = Nothing
    , _tpiPayload = pTpiPayload_
    , _tpiKey = Nothing
    , _tpiRegion = pTpiRegion_
    , _tpiOAuthToken = Nothing
    , _tpiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpiQuotaUser :: Lens' TargetPoolsInsert' (Maybe Text)
tpiQuotaUser
  = lens _tpiQuotaUser (\ s a -> s{_tpiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpiPrettyPrint :: Lens' TargetPoolsInsert' Bool
tpiPrettyPrint
  = lens _tpiPrettyPrint
      (\ s a -> s{_tpiPrettyPrint = a})

-- | Name of the project scoping this request.
tpiProject :: Lens' TargetPoolsInsert' Text
tpiProject
  = lens _tpiProject (\ s a -> s{_tpiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpiUserIP :: Lens' TargetPoolsInsert' (Maybe Text)
tpiUserIP
  = lens _tpiUserIP (\ s a -> s{_tpiUserIP = a})

-- | Multipart request metadata.
tpiPayload :: Lens' TargetPoolsInsert' TargetPool
tpiPayload
  = lens _tpiPayload (\ s a -> s{_tpiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpiKey :: Lens' TargetPoolsInsert' (Maybe Key)
tpiKey = lens _tpiKey (\ s a -> s{_tpiKey = a})

-- | Name of the region scoping this request.
tpiRegion :: Lens' TargetPoolsInsert' Text
tpiRegion
  = lens _tpiRegion (\ s a -> s{_tpiRegion = a})

-- | OAuth 2.0 token for the current user.
tpiOAuthToken :: Lens' TargetPoolsInsert' (Maybe OAuthToken)
tpiOAuthToken
  = lens _tpiOAuthToken
      (\ s a -> s{_tpiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpiFields :: Lens' TargetPoolsInsert' (Maybe Text)
tpiFields
  = lens _tpiFields (\ s a -> s{_tpiFields = a})

instance GoogleAuth TargetPoolsInsert' where
        authKey = tpiKey . _Just
        authToken = tpiOAuthToken . _Just

instance GoogleRequest TargetPoolsInsert' where
        type Rs TargetPoolsInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsInsert'{..}
          = go _tpiProject _tpiRegion _tpiQuotaUser
              (Just _tpiPrettyPrint)
              _tpiUserIP
              _tpiFields
              _tpiKey
              _tpiOAuthToken
              (Just AltJSON)
              _tpiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsInsertResource)
                      r
                      u
