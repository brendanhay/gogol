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
    , dtgUserIp
    , dtgZone
    , dtgKey
    , dtgDiskType
    , dtgOauthToken
    , dtgFields
    , dtgAlt
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] DiskType

-- | Returns the specified disk type resource.
--
-- /See:/ 'diskTypesGet'' smart constructor.
data DiskTypesGet' = DiskTypesGet'
    { _dtgQuotaUser   :: !(Maybe Text)
    , _dtgPrettyPrint :: !Bool
    , _dtgProject     :: !Text
    , _dtgUserIp      :: !(Maybe Text)
    , _dtgZone        :: !Text
    , _dtgKey         :: !(Maybe Text)
    , _dtgDiskType    :: !Text
    , _dtgOauthToken  :: !(Maybe Text)
    , _dtgFields      :: !(Maybe Text)
    , _dtgAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'dtgUserIp'
--
-- * 'dtgZone'
--
-- * 'dtgKey'
--
-- * 'dtgDiskType'
--
-- * 'dtgOauthToken'
--
-- * 'dtgFields'
--
-- * 'dtgAlt'
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
    , _dtgUserIp = Nothing
    , _dtgZone = pDtgZone_
    , _dtgKey = Nothing
    , _dtgDiskType = pDtgDiskType_
    , _dtgOauthToken = Nothing
    , _dtgFields = Nothing
    , _dtgAlt = JSON
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
dtgUserIp :: Lens' DiskTypesGet' (Maybe Text)
dtgUserIp
  = lens _dtgUserIp (\ s a -> s{_dtgUserIp = a})

-- | The name of the zone for this request.
dtgZone :: Lens' DiskTypesGet' Text
dtgZone = lens _dtgZone (\ s a -> s{_dtgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dtgKey :: Lens' DiskTypesGet' (Maybe Text)
dtgKey = lens _dtgKey (\ s a -> s{_dtgKey = a})

-- | Name of the disk type resource to return.
dtgDiskType :: Lens' DiskTypesGet' Text
dtgDiskType
  = lens _dtgDiskType (\ s a -> s{_dtgDiskType = a})

-- | OAuth 2.0 token for the current user.
dtgOauthToken :: Lens' DiskTypesGet' (Maybe Text)
dtgOauthToken
  = lens _dtgOauthToken
      (\ s a -> s{_dtgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dtgFields :: Lens' DiskTypesGet' (Maybe Text)
dtgFields
  = lens _dtgFields (\ s a -> s{_dtgFields = a})

-- | Data format for the response.
dtgAlt :: Lens' DiskTypesGet' Alt
dtgAlt = lens _dtgAlt (\ s a -> s{_dtgAlt = a})

instance GoogleRequest DiskTypesGet' where
        type Rs DiskTypesGet' = DiskType
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DiskTypesGet'{..}
          = go _dtgQuotaUser (Just _dtgPrettyPrint) _dtgProject
              _dtgUserIp
              _dtgZone
              _dtgKey
              _dtgDiskType
              _dtgOauthToken
              _dtgFields
              (Just _dtgAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy DiskTypesGetResource)
                      r
                      u
