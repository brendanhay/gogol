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
    , dgUserIp
    , dgZone
    , dgKey
    , dgOauthToken
    , dgFields
    , dgAlt
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
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Get '[JSON] Disk

-- | Returns a specified persistent disk.
--
-- /See:/ 'disksGet'' smart constructor.
data DisksGet' = DisksGet'
    { _dgQuotaUser   :: !(Maybe Text)
    , _dgPrettyPrint :: !Bool
    , _dgProject     :: !Text
    , _dgDisk        :: !Text
    , _dgUserIp      :: !(Maybe Text)
    , _dgZone        :: !Text
    , _dgKey         :: !(Maybe Text)
    , _dgOauthToken  :: !(Maybe Text)
    , _dgFields      :: !(Maybe Text)
    , _dgAlt         :: !Alt
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
-- * 'dgUserIp'
--
-- * 'dgZone'
--
-- * 'dgKey'
--
-- * 'dgOauthToken'
--
-- * 'dgFields'
--
-- * 'dgAlt'
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
    , _dgUserIp = Nothing
    , _dgZone = pDgZone_
    , _dgKey = Nothing
    , _dgOauthToken = Nothing
    , _dgFields = Nothing
    , _dgAlt = JSON
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
dgUserIp :: Lens' DisksGet' (Maybe Text)
dgUserIp = lens _dgUserIp (\ s a -> s{_dgUserIp = a})

-- | The name of the zone for this request.
dgZone :: Lens' DisksGet' Text
dgZone = lens _dgZone (\ s a -> s{_dgZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
dgKey :: Lens' DisksGet' (Maybe Text)
dgKey = lens _dgKey (\ s a -> s{_dgKey = a})

-- | OAuth 2.0 token for the current user.
dgOauthToken :: Lens' DisksGet' (Maybe Text)
dgOauthToken
  = lens _dgOauthToken (\ s a -> s{_dgOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
dgFields :: Lens' DisksGet' (Maybe Text)
dgFields = lens _dgFields (\ s a -> s{_dgFields = a})

-- | Data format for the response.
dgAlt :: Lens' DisksGet' Alt
dgAlt = lens _dgAlt (\ s a -> s{_dgAlt = a})

instance GoogleRequest DisksGet' where
        type Rs DisksGet' = Disk
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DisksGet'{..}
          = go _dgQuotaUser (Just _dgPrettyPrint) _dgProject
              _dgDisk
              _dgUserIp
              _dgZone
              _dgKey
              _dgOauthToken
              _dgFields
              (Just _dgAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DisksGetResource) r
                      u
