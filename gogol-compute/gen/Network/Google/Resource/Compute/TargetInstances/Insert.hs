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
-- Module      : Network.Google.Resource.Compute.TargetInstances.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeTargetInstancesInsert@.
module Network.Google.Resource.Compute.TargetInstances.Insert
    (
    -- * REST Resource
      TargetInstancesInsertResource

    -- * Creating a Request
    , targetInstancesInsert'
    , TargetInstancesInsert'

    -- * Request Lenses
    , tiiQuotaUser
    , tiiPrettyPrint
    , tiiProject
    , tiiUserIP
    , tiiZone
    , tiiPayload
    , tiiKey
    , tiiOAuthToken
    , tiiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeTargetInstancesInsert@ which the
-- 'TargetInstancesInsert'' request conforms to.
type TargetInstancesInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "targetInstances" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] TargetInstance :>
                             Post '[JSON] Operation

-- | Creates a TargetInstance resource in the specified project and zone
-- using the data included in the request.
--
-- /See:/ 'targetInstancesInsert'' smart constructor.
data TargetInstancesInsert' = TargetInstancesInsert'
    { _tiiQuotaUser   :: !(Maybe Text)
    , _tiiPrettyPrint :: !Bool
    , _tiiProject     :: !Text
    , _tiiUserIP      :: !(Maybe Text)
    , _tiiZone        :: !Text
    , _tiiPayload     :: !TargetInstance
    , _tiiKey         :: !(Maybe AuthKey)
    , _tiiOAuthToken  :: !(Maybe OAuthToken)
    , _tiiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TargetInstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tiiQuotaUser'
--
-- * 'tiiPrettyPrint'
--
-- * 'tiiProject'
--
-- * 'tiiUserIP'
--
-- * 'tiiZone'
--
-- * 'tiiPayload'
--
-- * 'tiiKey'
--
-- * 'tiiOAuthToken'
--
-- * 'tiiFields'
targetInstancesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> TargetInstance -- ^ 'payload'
    -> TargetInstancesInsert'
targetInstancesInsert' pTiiProject_ pTiiZone_ pTiiPayload_ =
    TargetInstancesInsert'
    { _tiiQuotaUser = Nothing
    , _tiiPrettyPrint = True
    , _tiiProject = pTiiProject_
    , _tiiUserIP = Nothing
    , _tiiZone = pTiiZone_
    , _tiiPayload = pTiiPayload_
    , _tiiKey = Nothing
    , _tiiOAuthToken = Nothing
    , _tiiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tiiQuotaUser :: Lens' TargetInstancesInsert' (Maybe Text)
tiiQuotaUser
  = lens _tiiQuotaUser (\ s a -> s{_tiiQuotaUser = a})

-- | Returns response with indentations and line breaks.
tiiPrettyPrint :: Lens' TargetInstancesInsert' Bool
tiiPrettyPrint
  = lens _tiiPrettyPrint
      (\ s a -> s{_tiiPrettyPrint = a})

-- | Name of the project scoping this request.
tiiProject :: Lens' TargetInstancesInsert' Text
tiiProject
  = lens _tiiProject (\ s a -> s{_tiiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tiiUserIP :: Lens' TargetInstancesInsert' (Maybe Text)
tiiUserIP
  = lens _tiiUserIP (\ s a -> s{_tiiUserIP = a})

-- | Name of the zone scoping this request.
tiiZone :: Lens' TargetInstancesInsert' Text
tiiZone = lens _tiiZone (\ s a -> s{_tiiZone = a})

-- | Multipart request metadata.
tiiPayload :: Lens' TargetInstancesInsert' TargetInstance
tiiPayload
  = lens _tiiPayload (\ s a -> s{_tiiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tiiKey :: Lens' TargetInstancesInsert' (Maybe AuthKey)
tiiKey = lens _tiiKey (\ s a -> s{_tiiKey = a})

-- | OAuth 2.0 token for the current user.
tiiOAuthToken :: Lens' TargetInstancesInsert' (Maybe OAuthToken)
tiiOAuthToken
  = lens _tiiOAuthToken
      (\ s a -> s{_tiiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
tiiFields :: Lens' TargetInstancesInsert' (Maybe Text)
tiiFields
  = lens _tiiFields (\ s a -> s{_tiiFields = a})

instance GoogleAuth TargetInstancesInsert' where
        authKey = tiiKey . _Just
        authToken = tiiOAuthToken . _Just

instance GoogleRequest TargetInstancesInsert' where
        type Rs TargetInstancesInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u TargetInstancesInsert'{..}
          = go _tiiProject _tiiZone _tiiQuotaUser
              (Just _tiiPrettyPrint)
              _tiiUserIP
              _tiiFields
              _tiiKey
              _tiiOAuthToken
              (Just AltJSON)
              _tiiPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy TargetInstancesInsertResource)
                      r
                      u
