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
-- Module      : Network.Google.Resource.Compute.Disks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a persistent disk in the specified project using the data
-- included in the request.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeDisksInsert@.
module Network.Google.Resource.Compute.Disks.Insert
    (
    -- * REST Resource
      DisksInsertResource

    -- * Creating a Request
    , disksInsert'
    , DisksInsert'

    -- * Request Lenses
    , diQuotaUser
    , diPrettyPrint
    , diSourceImage
    , diProject
    , diUserIP
    , diZone
    , diPayload
    , diKey
    , diOAuthToken
    , diFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeDisksInsert@ method which the
-- 'DisksInsert'' request conforms to.
type DisksInsertResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "disks" :>
             QueryParam "sourceImage" Text :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Disk :> Post '[JSON] Operation

-- | Creates a persistent disk in the specified project using the data
-- included in the request.
--
-- /See:/ 'disksInsert'' smart constructor.
data DisksInsert' = DisksInsert'
    { _diQuotaUser   :: !(Maybe Text)
    , _diPrettyPrint :: !Bool
    , _diSourceImage :: !(Maybe Text)
    , _diProject     :: !Text
    , _diUserIP      :: !(Maybe Text)
    , _diZone        :: !Text
    , _diPayload     :: !Disk
    , _diKey         :: !(Maybe AuthKey)
    , _diOAuthToken  :: !(Maybe OAuthToken)
    , _diFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'diUserIP'
--
-- * 'diZone'
--
-- * 'diPayload'
--
-- * 'diKey'
--
-- * 'diOAuthToken'
--
-- * 'diFields'
disksInsert'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> Disk -- ^ 'payload'
    -> DisksInsert'
disksInsert' pDiProject_ pDiZone_ pDiPayload_ =
    DisksInsert'
    { _diQuotaUser = Nothing
    , _diPrettyPrint = True
    , _diSourceImage = Nothing
    , _diProject = pDiProject_
    , _diUserIP = Nothing
    , _diZone = pDiZone_
    , _diPayload = pDiPayload_
    , _diKey = Nothing
    , _diOAuthToken = Nothing
    , _diFields = Nothing
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
diUserIP :: Lens' DisksInsert' (Maybe Text)
diUserIP = lens _diUserIP (\ s a -> s{_diUserIP = a})

-- | The name of the zone for this request.
diZone :: Lens' DisksInsert' Text
diZone = lens _diZone (\ s a -> s{_diZone = a})

-- | Multipart request metadata.
diPayload :: Lens' DisksInsert' Disk
diPayload
  = lens _diPayload (\ s a -> s{_diPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
diKey :: Lens' DisksInsert' (Maybe AuthKey)
diKey = lens _diKey (\ s a -> s{_diKey = a})

-- | OAuth 2.0 token for the current user.
diOAuthToken :: Lens' DisksInsert' (Maybe OAuthToken)
diOAuthToken
  = lens _diOAuthToken (\ s a -> s{_diOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
diFields :: Lens' DisksInsert' (Maybe Text)
diFields = lens _diFields (\ s a -> s{_diFields = a})

instance GoogleAuth DisksInsert' where
        _AuthKey = diKey . _Just
        _AuthToken = diOAuthToken . _Just

instance GoogleRequest DisksInsert' where
        type Rs DisksInsert' = Operation
        request = requestWith computeRequest
        requestWith rq DisksInsert'{..}
          = go _diProject _diZone _diSourceImage _diQuotaUser
              (Just _diPrettyPrint)
              _diUserIP
              _diFields
              _diKey
              _diOAuthToken
              (Just AltJSON)
              _diPayload
          where go
                  = clientBuild (Proxy :: Proxy DisksInsertResource) rq
