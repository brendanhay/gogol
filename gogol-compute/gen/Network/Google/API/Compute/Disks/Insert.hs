{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Disks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a persistent disk in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.disks.insert@.
module Network.Google.API.Compute.Disks.Insert
    (
    -- * REST Resource
      DisksInsertAPI

    -- * Creating a Request
    , disksInsert'
    , DisksInsert'

    -- * Request Lenses
    , diQuotaUser
    , diPrettyPrint
    , diSourceImage
    , diProject
    , diUserIp
    , diZone
    , diKey
    , diOauthToken
    , diFields
    , diAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.disks.insert which the
-- 'DisksInsert'' request conforms to.
type DisksInsertAPI =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "disks" :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "sourceImage" Text :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Creates a persistent disk in the specified project using the data
-- included in the request.
--
-- /See:/ 'disksInsert'' smart constructor.
data DisksInsert' = DisksInsert'
    { _diQuotaUser   :: !(Maybe Text)
    , _diPrettyPrint :: !Bool
    , _diSourceImage :: !(Maybe Text)
    , _diProject     :: !Text
    , _diUserIp      :: !(Maybe Text)
    , _diZone        :: !Text
    , _diKey         :: !(Maybe Text)
    , _diOauthToken  :: !(Maybe Text)
    , _diFields      :: !(Maybe Text)
    , _diAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'DisksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diQuotaUser'
--
-- * 'diPrettyPrint'
--
-- * 'diSourceImage'
--
-- * 'diProject'
--
-- * 'diUserIp'
--
-- * 'diZone'
--
-- * 'diKey'
--
-- * 'diOauthToken'
--
-- * 'diFields'
--
-- * 'diAlt'
disksInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> DisksInsert'
disksInsert' pDiProject_ pDiZone_ =
    DisksInsert'
    { _diQuotaUser = Nothing
    , _diPrettyPrint = True
    , _diSourceImage = Nothing
    , _diProject = pDiProject_
    , _diUserIp = Nothing
    , _diZone = pDiZone_
    , _diKey = Nothing
    , _diOauthToken = Nothing
    , _diFields = Nothing
    , _diAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
diQuotaUser :: Lens' DisksInsert' (Maybe Text)
diQuotaUser
  = lens _diQuotaUser (\ s a -> s{_diQuotaUser = a})

-- | Returns response with indentations and line breaks.
diPrettyPrint :: Lens' DisksInsert' Bool
diPrettyPrint
  = lens _diPrettyPrint
      (\ s a -> s{_diPrettyPrint = a})

-- | Optional. Source image to restore onto a disk.
diSourceImage :: Lens' DisksInsert' (Maybe Text)
diSourceImage
  = lens _diSourceImage
      (\ s a -> s{_diSourceImage = a})

-- | Project ID for this request.
diProject :: Lens' DisksInsert' Text
diProject
  = lens _diProject (\ s a -> s{_diProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
diUserIp :: Lens' DisksInsert' (Maybe Text)
diUserIp = lens _diUserIp (\ s a -> s{_diUserIp = a})

-- | The name of the zone for this request.
diZone :: Lens' DisksInsert' Text
diZone = lens _diZone (\ s a -> s{_diZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DisksInsert' (Maybe Text)
diKey = lens _diKey (\ s a -> s{_diKey = a})

-- | OAuth 2.0 token for the current user.
diOauthToken :: Lens' DisksInsert' (Maybe Text)
diOauthToken
  = lens _diOauthToken (\ s a -> s{_diOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
diFields :: Lens' DisksInsert' (Maybe Text)
diFields = lens _diFields (\ s a -> s{_diFields = a})

-- | Data format for the response.
diAlt :: Lens' DisksInsert' Alt
diAlt = lens _diAlt (\ s a -> s{_diAlt = a})

instance GoogleRequest DisksInsert' where
        type Rs DisksInsert' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u DisksInsert'{..}
          = go _diQuotaUser (Just _diPrettyPrint)
              _diSourceImage
              _diProject
              _diUserIp
              _diZone
              _diKey
              _diOauthToken
              _diFields
              (Just _diAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy DisksInsertAPI) r u
