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
-- Module      : Network.Google.Resource.Compute.Disks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns a specified persistent disk.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDisksGet@.
module Network.Google.Resource.Compute.Disks.Get
    (
    -- * REST Resource
      DisksGetResource

    -- * Creating a Request
    , disksGet'
    , DisksGet'

    -- * Request Lenses
    , dgQuotaUser
    , dgPrettyPrint
    , dgProject
    , dgDisk
    , dgUserIP
    , dgZone
    , dgKey
    , dgOAuthToken
    , dgFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksGet@ which the
-- 'DisksGet'' request conforms to.
type DisksGetResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "disks" :>
             Capture "disk" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" Key :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :> Get '[JSON] Disk

-- | Returns a specified persistent disk.
--
-- /See:/ 'disksGet'' smart constructor.
data DisksGet' = DisksGet'
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgProject     :: !Text
    , _dgDisk        :: !Text
    , _dgUserIP      :: !(Maybe Text)
    , _dgZone        :: !Text
    , _dgKey         :: !(Maybe Key)
    , _dgOAuthToken  :: !(Maybe OAuthToken)
    , _dgFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgQuotaUser'
--
-- * 'dgPrettyPrint'
--
-- * 'dgProject'
--
-- * 'dgDisk'
--
-- * 'dgUserIP'
--
-- * 'dgZone'
--
-- * 'dgKey'
--
-- * 'dgOAuthToken'
--
-- * 'dgFields'
disksGet'
    :: Text -- ^ 'project'
    -> Text -- ^ 'disk'
    -> Text -- ^ 'zone'
    -> DisksGet'
disksGet' pDgProject_ pDgDisk_ pDgZone_ =
    DisksGet'
    { _dgQuotaUser = Nothing
    , _dgPrettyPrint = True
    , _dgProject = pDgProject_
    , _dgDisk = pDgDisk_
    , _dgUserIP = Nothing
    , _dgZone = pDgZone_
    , _dgKey = Nothing
    , _dgOAuthToken = Nothing
    , _dgFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
dgQuotaUser :: Lens' DisksGet' (Maybe Text)
dgQuotaUser
  = lens _dgQuotaUser (\ s a -> s{_dgQuotaUser = a})

-- | Returns response with indentations and line breaks.
dgPrettyPrint :: Lens' DisksGet' Bool
dgPrettyPrint
  = lens _dgPrettyPrint
      (\ s a -> s{_dgPrettyPrint = a})

-- | Project ID for this request.
dgProject :: Lens' DisksGet' Text
dgProject
  = lens _dgProject (\ s a -> s{_dgProject = a})

-- | Name of the persistent disk to return.
dgDisk :: Lens' DisksGet' Text
dgDisk = lens _dgDisk (\ s a -> s{_dgDisk = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
dgUserIP :: Lens' DisksGet' (Maybe Text)
dgUserIP = lens _dgUserIP (\ s a -> s{_dgUserIP = a})

-- | The name of the zone for this request.
dgZone :: Lens' DisksGet' Text
dgZone = lens _dgZone (\ s a -> s{_dgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DisksGet' (Maybe Key)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | OAuth 2.0 token for the current user.
dgOAuthToken :: Lens' DisksGet' (Maybe OAuthToken)
dgOAuthToken
  = lens _dgOAuthToken (\ s a -> s{_dgOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DisksGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

instance GoogleAuth DisksGet' where
        authKey = dgKey . _Just
        authToken = dgOAuthToken . _Just

instance GoogleRequest DisksGet' where
        type Rs DisksGet' = Disk
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DisksGet'{..}
          = go _dgProject _dgZone _dgDisk _dgQuotaUser
              (Just _dgPrettyPrint)
              _dgUserIP
              _dgFields
              _dgKey
              _dgOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy DisksGetResource) r
                      u
