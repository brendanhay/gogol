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
-- Module      : Network.Google.Resource.Compute.RegionOperations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified region-specific Operations resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeRegionOperationsDelete@.
module Network.Google.Resource.Compute.RegionOperations.Delete
    (
    -- * REST Resource
      RegionOperationsDeleteResource

    -- * Creating a Request
    , regionOperationsDelete'
    , RegionOperationsDelete'

    -- * Request Lenses
    , rodQuotaUser
    , rodPrettyPrint
    , rodProject
    , rodOperation
    , rodUserIP
    , rodKey
    , rodRegion
    , rodOAuthToken
    , rodFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeRegionOperationsDelete@ method which the
-- 'RegionOperationsDelete'' request conforms to.
type RegionOperationsDeleteResource =
     Capture "project" Text :>
       "regions" :>
         Capture "region" Text :>
           "operations" :>
             Capture "operation" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         Header "Authorization" OAuthToken :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes the specified region-specific Operations resource.
--
-- /See:/ 'regionOperationsDelete'' smart constructor.
data RegionOperationsDelete' = RegionOperationsDelete'
    { _rodQuotaUser   :: !(Maybe Text)
    , _rodPrettyPrint :: !Bool
    , _rodProject     :: !Text
    , _rodOperation   :: !Text
    , _rodUserIP      :: !(Maybe Text)
    , _rodKey         :: !(Maybe AuthKey)
    , _rodRegion      :: !Text
    , _rodOAuthToken  :: !(Maybe OAuthToken)
    , _rodFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RegionOperationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rodQuotaUser'
--
-- * 'rodPrettyPrint'
--
-- * 'rodProject'
--
-- * 'rodOperation'
--
-- * 'rodUserIP'
--
-- * 'rodKey'
--
-- * 'rodRegion'
--
-- * 'rodOAuthToken'
--
-- * 'rodFields'
regionOperationsDelete'
    :: Text -- ^ 'project'
    -> Text -- ^ 'operation'
    -> Text -- ^ 'region'
    -> RegionOperationsDelete'
regionOperationsDelete' pRodProject_ pRodOperation_ pRodRegion_ =
    RegionOperationsDelete'
    { _rodQuotaUser = Nothing
    , _rodPrettyPrint = True
    , _rodProject = pRodProject_
    , _rodOperation = pRodOperation_
    , _rodUserIP = Nothing
    , _rodKey = Nothing
    , _rodRegion = pRodRegion_
    , _rodOAuthToken = Nothing
    , _rodFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
rodQuotaUser :: Lens' RegionOperationsDelete' (Maybe Text)
rodQuotaUser
  = lens _rodQuotaUser (\ s a -> s{_rodQuotaUser = a})

-- | Returns response with indentations and line breaks.
rodPrettyPrint :: Lens' RegionOperationsDelete' Bool
rodPrettyPrint
  = lens _rodPrettyPrint
      (\ s a -> s{_rodPrettyPrint = a})

-- | Project ID for this request.
rodProject :: Lens' RegionOperationsDelete' Text
rodProject
  = lens _rodProject (\ s a -> s{_rodProject = a})

-- | Name of the Operations resource to delete.
rodOperation :: Lens' RegionOperationsDelete' Text
rodOperation
  = lens _rodOperation (\ s a -> s{_rodOperation = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
rodUserIP :: Lens' RegionOperationsDelete' (Maybe Text)
rodUserIP
  = lens _rodUserIP (\ s a -> s{_rodUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
rodKey :: Lens' RegionOperationsDelete' (Maybe AuthKey)
rodKey = lens _rodKey (\ s a -> s{_rodKey = a})

-- | Name of the region scoping this request.
rodRegion :: Lens' RegionOperationsDelete' Text
rodRegion
  = lens _rodRegion (\ s a -> s{_rodRegion = a})

-- | OAuth 2.0 token for the current user.
rodOAuthToken :: Lens' RegionOperationsDelete' (Maybe OAuthToken)
rodOAuthToken
  = lens _rodOAuthToken
      (\ s a -> s{_rodOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
rodFields :: Lens' RegionOperationsDelete' (Maybe Text)
rodFields
  = lens _rodFields (\ s a -> s{_rodFields = a})

instance GoogleAuth RegionOperationsDelete' where
        _AuthKey = rodKey . _Just
        _AuthToken = rodOAuthToken . _Just

instance GoogleRequest RegionOperationsDelete' where
        type Rs RegionOperationsDelete' = ()
        request = requestWith computeRequest
        requestWith rq RegionOperationsDelete'{..}
          = go _rodProject _rodRegion _rodOperation
              _rodQuotaUser
              (Just _rodPrettyPrint)
              _rodUserIP
              _rodFields
              _rodKey
              _rodOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy RegionOperationsDeleteResource)
                      rq
