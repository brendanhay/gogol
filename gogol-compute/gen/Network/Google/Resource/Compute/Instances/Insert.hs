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
-- Module      : Network.Google.Resource.Compute.Instances.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesInsert@.
module Network.Google.Resource.Compute.Instances.Insert
    (
    -- * REST Resource
      InstancesInsertResource

    -- * Creating a Request
    , instancesInsert'
    , InstancesInsert'

    -- * Request Lenses
    , iiQuotaUser
    , iiPrettyPrint
    , iiProject
    , iiUserIP
    , iiZone
    , iiPayload
    , iiKey
    , iiOAuthToken
    , iiFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesInsert@ method which the
-- 'InstancesInsert'' request conforms to.
type InstancesInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "fields" Text :>
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] Instance :> Post '[JSON] Operation

-- | Creates an instance resource in the specified project using the data
-- included in the request.
--
-- /See:/ 'instancesInsert'' smart constructor.
data InstancesInsert' = InstancesInsert'
    { _iiQuotaUser   :: !(Maybe Text)
    , _iiPrettyPrint :: !Bool
    , _iiProject     :: !Text
    , _iiUserIP      :: !(Maybe Text)
    , _iiZone        :: !Text
    , _iiPayload     :: !Instance
    , _iiKey         :: !(Maybe AuthKey)
    , _iiOAuthToken  :: !(Maybe OAuthToken)
    , _iiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iiQuotaUser'
--
-- * 'iiPrettyPrint'
--
-- * 'iiProject'
--
-- * 'iiUserIP'
--
-- * 'iiZone'
--
-- * 'iiPayload'
--
-- * 'iiKey'
--
-- * 'iiOAuthToken'
--
-- * 'iiFields'
instancesInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Instance -- ^ 'payload'
    -> InstancesInsert'
instancesInsert' pIiProject_ pIiZone_ pIiPayload_ =
    InstancesInsert'
    { _iiQuotaUser = Nothing
    , _iiPrettyPrint = True
    , _iiProject = pIiProject_
    , _iiUserIP = Nothing
    , _iiZone = pIiZone_
    , _iiPayload = pIiPayload_
    , _iiKey = Nothing
    , _iiOAuthToken = Nothing
    , _iiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iiQuotaUser :: Lens' InstancesInsert' (Maybe Text)
iiQuotaUser
  = lens _iiQuotaUser (\ s a -> s{_iiQuotaUser = a})

-- | Returns response with indentations and line breaks.
iiPrettyPrint :: Lens' InstancesInsert' Bool
iiPrettyPrint
  = lens _iiPrettyPrint
      (\ s a -> s{_iiPrettyPrint = a})

-- | Project ID for this request.
iiProject :: Lens' InstancesInsert' Text
iiProject
  = lens _iiProject (\ s a -> s{_iiProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iiUserIP :: Lens' InstancesInsert' (Maybe Text)
iiUserIP = lens _iiUserIP (\ s a -> s{_iiUserIP = a})

-- | The name of the zone for this request.
iiZone :: Lens' InstancesInsert' Text
iiZone = lens _iiZone (\ s a -> s{_iiZone = a})

-- | Multipart request metadata.
iiPayload :: Lens' InstancesInsert' Instance
iiPayload
  = lens _iiPayload (\ s a -> s{_iiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iiKey :: Lens' InstancesInsert' (Maybe AuthKey)
iiKey = lens _iiKey (\ s a -> s{_iiKey = a})

-- | OAuth 2.0 token for the current user.
iiOAuthToken :: Lens' InstancesInsert' (Maybe OAuthToken)
iiOAuthToken
  = lens _iiOAuthToken (\ s a -> s{_iiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iiFields :: Lens' InstancesInsert' (Maybe Text)
iiFields = lens _iiFields (\ s a -> s{_iiFields = a})

instance GoogleAuth InstancesInsert' where
        _AuthKey = iiKey . _Just
        _AuthToken = iiOAuthToken . _Just

instance GoogleRequest InstancesInsert' where
        type Rs InstancesInsert' = Operation
        request = requestWith computeRequest
        requestWith rq InstancesInsert'{..}
          = go _iiProject _iiZone _iiQuotaUser
              (Just _iiPrettyPrint)
              _iiUserIP
              _iiFields
              _iiKey
              _iiOAuthToken
              (Just AltJSON)
              _iiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy InstancesInsertResource)
                      rq
