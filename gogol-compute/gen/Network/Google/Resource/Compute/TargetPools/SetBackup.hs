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
-- Module      : Network.Google.Resource.Compute.TargetPools.SetBackup
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Changes backup pool configurations.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetPoolsSetBackup@.
module Network.Google.Resource.Compute.TargetPools.SetBackup
    (
    -- * REST Resource
      TargetPoolsSetBackupResource

    -- * Creating a Request
    , targetPoolsSetBackup'
    , TargetPoolsSetBackup'

    -- * Request Lenses
    , tpsbQuotaUser
    , tpsbPrettyPrint
    , tpsbProject
    , tpsbTargetPool
    , tpsbUserIP
    , tpsbPayload
    , tpsbKey
    , tpsbFailoverRatio
    , tpsbRegion
    , tpsbOAuthToken
    , tpsbFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetPoolsSetBackup@ which the
-- 'TargetPoolsSetBackup'' request conforms to.
type TargetPoolsSetBackupResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "targetPools" :>
             Capture "targetPool" Text :>
               "setBackup" :>
                 QueryParam "failoverRatio" Float :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" Key :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 ReqBody '[JSON] TargetReference :>
                                   Post '[JSON] Operation

-- | Changes backup pool configurations.
--
-- /See:/ 'targetPoolsSetBackup'' smart constructor.
data TargetPoolsSetBackup' = TargetPoolsSetBackup'
    { _tpsbQuotaUser     :: !(Maybe Text)
    , _tpsbPrettyPrint   :: !Bool
    , _tpsbProject       :: !Text
    , _tpsbTargetPool    :: !Text
    , _tpsbUserIP        :: !(Maybe Text)
    , _tpsbPayload       :: !TargetReference
    , _tpsbKey           :: !(Maybe Key)
    , _tpsbFailoverRatio :: !(Maybe Float)
    , _tpsbRegion        :: !Text
    , _tpsbOAuthToken    :: !(Maybe OAuthToken)
    , _tpsbFields        :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetPoolsSetBackup'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tpsbQuotaUser'
--
-- * 'tpsbPrettyPrint'
--
-- * 'tpsbProject'
--
-- * 'tpsbTargetPool'
--
-- * 'tpsbUserIP'
--
-- * 'tpsbPayload'
--
-- * 'tpsbKey'
--
-- * 'tpsbFailoverRatio'
--
-- * 'tpsbRegion'
--
-- * 'tpsbOAuthToken'
--
-- * 'tpsbFields'
targetPoolsSetBackup'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> TargetReference -- ^ 'payload'
    -> Text -- ^ 'region'
    -> TargetPoolsSetBackup'
targetPoolsSetBackup' pTpsbProject_ pTpsbTargetPool_ pTpsbPayload_ pTpsbRegion_ =
    TargetPoolsSetBackup'
    { _tpsbQuotaUser = Nothing
    , _tpsbPrettyPrint = True
    , _tpsbProject = pTpsbProject_
    , _tpsbTargetPool = pTpsbTargetPool_
    , _tpsbUserIP = Nothing
    , _tpsbPayload = pTpsbPayload_
    , _tpsbKey = Nothing
    , _tpsbFailoverRatio = Nothing
    , _tpsbRegion = pTpsbRegion_
    , _tpsbOAuthToken = Nothing
    , _tpsbFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tpsbQuotaUser :: Lens' TargetPoolsSetBackup' (Maybe Text)
tpsbQuotaUser
  = lens _tpsbQuotaUser
      (\ s a -> s{_tpsbQuotaUser = a})

-- | Returns response with indentations and line breaks.
tpsbPrettyPrint :: Lens' TargetPoolsSetBackup' Bool
tpsbPrettyPrint
  = lens _tpsbPrettyPrint
      (\ s a -> s{_tpsbPrettyPrint = a})

-- | Name of the project scoping this request.
tpsbProject :: Lens' TargetPoolsSetBackup' Text
tpsbProject
  = lens _tpsbProject (\ s a -> s{_tpsbProject = a})

-- | Name of the TargetPool resource for which the backup is to be set.
tpsbTargetPool :: Lens' TargetPoolsSetBackup' Text
tpsbTargetPool
  = lens _tpsbTargetPool
      (\ s a -> s{_tpsbTargetPool = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tpsbUserIP :: Lens' TargetPoolsSetBackup' (Maybe Text)
tpsbUserIP
  = lens _tpsbUserIP (\ s a -> s{_tpsbUserIP = a})

-- | Multipart request metadata.
tpsbPayload :: Lens' TargetPoolsSetBackup' TargetReference
tpsbPayload
  = lens _tpsbPayload (\ s a -> s{_tpsbPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpsbKey :: Lens' TargetPoolsSetBackup' (Maybe Key)
tpsbKey = lens _tpsbKey (\ s a -> s{_tpsbKey = a})

-- | New failoverRatio value for the containing target pool.
tpsbFailoverRatio :: Lens' TargetPoolsSetBackup' (Maybe Float)
tpsbFailoverRatio
  = lens _tpsbFailoverRatio
      (\ s a -> s{_tpsbFailoverRatio = a})

-- | Name of the region scoping this request.
tpsbRegion :: Lens' TargetPoolsSetBackup' Text
tpsbRegion
  = lens _tpsbRegion (\ s a -> s{_tpsbRegion = a})

-- | OAuth 2.0 token for the current user.
tpsbOAuthToken :: Lens' TargetPoolsSetBackup' (Maybe OAuthToken)
tpsbOAuthToken
  = lens _tpsbOAuthToken
      (\ s a -> s{_tpsbOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpsbFields :: Lens' TargetPoolsSetBackup' (Maybe Text)
tpsbFields
  = lens _tpsbFields (\ s a -> s{_tpsbFields = a})

instance GoogleAuth TargetPoolsSetBackup' where
        authKey = tpsbKey . _Just
        authToken = tpsbOAuthToken . _Just

instance GoogleRequest TargetPoolsSetBackup' where
        type Rs TargetPoolsSetBackup' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsSetBackup'{..}
          = go _tpsbProject _tpsbRegion _tpsbTargetPool
              _tpsbFailoverRatio
              _tpsbQuotaUser
              (Just _tpsbPrettyPrint)
              _tpsbUserIP
              _tpsbFields
              _tpsbKey
              _tpsbOAuthToken
              (Just AltJSON)
              _tpsbPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsSetBackupResource)
                      r
                      u
