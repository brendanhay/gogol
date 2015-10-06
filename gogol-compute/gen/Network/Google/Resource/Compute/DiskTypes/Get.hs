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
-- Module      : Network.Google.Resource.Compute.DiskTypes.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified disk type resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDiskTypesGet@.
module Network.Google.Resource.Compute.DiskTypes.Get
    (
    -- * REST Resource
      DiskTypesGetResource

    -- * Creating a Request
    , diskTypesGet'
    , DiskTypesGet'

    -- * Request Lenses
    , dtgQuotaUser
    , dtgPrettyPrint
    , dtgProject
    , dtgUserIP
    , dtgZone
    , dtgKey
    , dtgDiskType
    , dtgOAuthToken
    , dtgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDiskTypesGet@ which the
-- 'DiskTypesGet'' request conforms to.
type DiskTypesGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "diskTypes" :>
             Capture "diskType" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] DiskType

-- | Returns the specified disk type resource.
--
-- /See:/ 'diskTypesGet'' smart constructor.
data DiskTypesGet' = DiskTypesGet'
    { _dtgQuotaUser   :: !(Maybe Text)
    , _dtgPrettyPrint :: !Bool
    , _dtgProject     :: !Text
    , _dtgUserIP      :: !(Maybe Text)
    , _dtgZone        :: !Text
    , _dtgKey         :: !(Maybe AuthKey)
    , _dtgDiskType    :: !Text
    , _dtgOAuthToken  :: !(Maybe OAuthToken)
    , _dtgFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'DiskTypesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtgQuotaUser'
--
-- * 'dtgPrettyPrint'
--
-- * 'dtgProject'
--
-- * 'dtgUserIP'
--
-- * 'dtgZone'
--
-- * 'dtgKey'
--
-- * 'dtgDiskType'
--
-- * 'dtgOAuthToken'
--
-- * 'dtgFields'
diskTypesGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Text -- ^ 'diskType'
    -> DiskTypesGet'
diskTypesGet' pDtgProject_ pDtgZone_ pDtgDiskType_ =
    DiskTypesGet'
    { _dtgQuotaUser = Nothing
    , _dtgPrettyPrint = True
    , _dtgProject = pDtgProject_
    , _dtgUserIP = Nothing
    , _dtgZone = pDtgZone_
    , _dtgKey = Nothing
    , _dtgDiskType = pDtgDiskType_
    , _dtgOAuthToken = Nothing
    , _dtgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dtgQuotaUser :: Lens' DiskTypesGet' (Maybe Text)
dtgQuotaUser
  = lens _dtgQuotaUser (\ s a -> s{_dtgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dtgPrettyPrint :: Lens' DiskTypesGet' Bool
dtgPrettyPrint
  = lens _dtgPrettyPrint
      (\ s a -> s{_dtgPrettyPrint = a})

-- | Project ID for this request.
dtgProject :: Lens' DiskTypesGet' Text
dtgProject
  = lens _dtgProject (\ s a -> s{_dtgProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dtgUserIP :: Lens' DiskTypesGet' (Maybe Text)
dtgUserIP
  = lens _dtgUserIP (\ s a -> s{_dtgUserIP = a})

-- | The name of the zone for this request.
dtgZone :: Lens' DiskTypesGet' Text
dtgZone = lens _dtgZone (\ s a -> s{_dtgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dtgKey :: Lens' DiskTypesGet' (Maybe AuthKey)
dtgKey = lens _dtgKey (\ s a -> s{_dtgKey = a})

-- | Name of the disk type resource to return.
dtgDiskType :: Lens' DiskTypesGet' Text
dtgDiskType
  = lens _dtgDiskType (\ s a -> s{_dtgDiskType = a})

-- | OAuth 2.0 token for the current user.
dtgOAuthToken :: Lens' DiskTypesGet' (Maybe OAuthToken)
dtgOAuthToken
  = lens _dtgOAuthToken
      (\ s a -> s{_dtgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dtgFields :: Lens' DiskTypesGet' (Maybe Text)
dtgFields
  = lens _dtgFields (\ s a -> s{_dtgFields = a})

instance GoogleAuth DiskTypesGet' where
        _AuthKey = dtgKey . _Just
        _AuthToken = dtgOAuthToken . _Just

instance GoogleRequest DiskTypesGet' where
        type Rs DiskTypesGet' = DiskType
        request = requestWith computeRequest
        requestWith rq DiskTypesGet'{..}
          = go _dtgProject _dtgZone _dtgDiskType _dtgQuotaUser
              (Just _dtgPrettyPrint)
              _dtgUserIP
              _dtgFields
              _dtgKey
              _dtgOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy DiskTypesGetResource)
                      rq
