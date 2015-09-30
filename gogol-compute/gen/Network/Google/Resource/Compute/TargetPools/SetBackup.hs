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
    , tpsbUserIp
    , tpsbKey
    , tpsbFailoverRatio
    , tpsbRegion
    , tpsbOauthToken
    , tpsbFields
    , tpsbAlt
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
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "key" Text :>
                         QueryParam "failoverRatio" Float :>
                           QueryParam "oauth_token" Text :>
                             QueryParam "fields" Text :>
                               QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Changes backup pool configurations.
--
-- /See:/ 'targetPoolsSetBackup'' smart constructor.
data TargetPoolsSetBackup' = TargetPoolsSetBackup'
    { _tpsbQuotaUser     :: !(Maybe Text)
    , _tpsbPrettyPrint   :: !Bool
    , _tpsbProject       :: !Text
    , _tpsbTargetPool    :: !Text
    , _tpsbUserIp        :: !(Maybe Text)
    , _tpsbKey           :: !(Maybe Text)
    , _tpsbFailoverRatio :: !(Maybe Float)
    , _tpsbRegion        :: !Text
    , _tpsbOauthToken    :: !(Maybe Text)
    , _tpsbFields        :: !(Maybe Text)
    , _tpsbAlt           :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'tpsbUserIp'
--
-- * 'tpsbKey'
--
-- * 'tpsbFailoverRatio'
--
-- * 'tpsbRegion'
--
-- * 'tpsbOauthToken'
--
-- * 'tpsbFields'
--
-- * 'tpsbAlt'
targetPoolsSetBackup'
    :: Text -- ^ 'project'
    -> Text -- ^ 'targetPool'
    -> Text -- ^ 'region'
    -> TargetPoolsSetBackup'
targetPoolsSetBackup' pTpsbProject_ pTpsbTargetPool_ pTpsbRegion_ =
    TargetPoolsSetBackup'
    { _tpsbQuotaUser = Nothing
    , _tpsbPrettyPrint = True
    , _tpsbProject = pTpsbProject_
    , _tpsbTargetPool = pTpsbTargetPool_
    , _tpsbUserIp = Nothing
    , _tpsbKey = Nothing
    , _tpsbFailoverRatio = Nothing
    , _tpsbRegion = pTpsbRegion_
    , _tpsbOauthToken = Nothing
    , _tpsbFields = Nothing
    , _tpsbAlt = JSON
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
tpsbUserIp :: Lens' TargetPoolsSetBackup' (Maybe Text)
tpsbUserIp
  = lens _tpsbUserIp (\ s a -> s{_tpsbUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tpsbKey :: Lens' TargetPoolsSetBackup' (Maybe Text)
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
tpsbOauthToken :: Lens' TargetPoolsSetBackup' (Maybe Text)
tpsbOauthToken
  = lens _tpsbOauthToken
      (\ s a -> s{_tpsbOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
tpsbFields :: Lens' TargetPoolsSetBackup' (Maybe Text)
tpsbFields
  = lens _tpsbFields (\ s a -> s{_tpsbFields = a})

-- | Data format for the response.
tpsbAlt :: Lens' TargetPoolsSetBackup' Alt
tpsbAlt = lens _tpsbAlt (\ s a -> s{_tpsbAlt = a})

instance GoogleRequest TargetPoolsSetBackup' where
        type Rs TargetPoolsSetBackup' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetPoolsSetBackup'{..}
          = go _tpsbQuotaUser (Just _tpsbPrettyPrint)
              _tpsbProject
              _tpsbTargetPool
              _tpsbUserIp
              _tpsbKey
              _tpsbFailoverRatio
              _tpsbRegion
              _tpsbOauthToken
              _tpsbFields
              (Just _tpsbAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetPoolsSetBackupResource)
                      r
                      u
