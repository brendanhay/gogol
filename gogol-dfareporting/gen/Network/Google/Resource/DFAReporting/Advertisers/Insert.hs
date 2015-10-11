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
-- Module      : Network.Google.Resource.DFAReporting.Advertisers.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new advertiser.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingAdvertisersInsert@.
module Network.Google.Resource.DFAReporting.Advertisers.Insert
    (
    -- * REST Resource
      AdvertisersInsertResource

    -- * Creating a Request
    , advertisersInsert'
    , AdvertisersInsert'

    -- * Request Lenses
    , aiiQuotaUser
    , aiiPrettyPrint
    , aiiUserIP
    , aiiProFileId
    , aiiPayload
    , aiiKey
    , aiiOAuthToken
    , aiiFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingAdvertisersInsert@ method which the
-- 'AdvertisersInsert'' request conforms to.
type AdvertisersInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "advertisers" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Advertiser :> Post '[JSON] Advertiser

-- | Inserts a new advertiser.
--
-- /See:/ 'advertisersInsert'' smart constructor.
data AdvertisersInsert' = AdvertisersInsert'
    { _aiiQuotaUser   :: !(Maybe Text)
    , _aiiPrettyPrint :: !Bool
    , _aiiUserIP      :: !(Maybe Text)
    , _aiiProFileId   :: !Int64
    , _aiiPayload     :: !Advertiser
    , _aiiKey         :: !(Maybe AuthKey)
    , _aiiOAuthToken  :: !(Maybe OAuthToken)
    , _aiiFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AdvertisersInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aiiQuotaUser'
--
-- * 'aiiPrettyPrint'
--
-- * 'aiiUserIP'
--
-- * 'aiiProFileId'
--
-- * 'aiiPayload'
--
-- * 'aiiKey'
--
-- * 'aiiOAuthToken'
--
-- * 'aiiFields'
advertisersInsert'
    :: Int64 -- ^ 'profileId'
    -> Advertiser -- ^ 'payload'
    -> AdvertisersInsert'
advertisersInsert' pAiiProFileId_ pAiiPayload_ =
    AdvertisersInsert'
    { _aiiQuotaUser = Nothing
    , _aiiPrettyPrint = True
    , _aiiUserIP = Nothing
    , _aiiProFileId = pAiiProFileId_
    , _aiiPayload = pAiiPayload_
    , _aiiKey = Nothing
    , _aiiOAuthToken = Nothing
    , _aiiFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aiiQuotaUser :: Lens' AdvertisersInsert' (Maybe Text)
aiiQuotaUser
  = lens _aiiQuotaUser (\ s a -> s{_aiiQuotaUser = a})

-- | Returns response with indentations and line breaks.
aiiPrettyPrint :: Lens' AdvertisersInsert' Bool
aiiPrettyPrint
  = lens _aiiPrettyPrint
      (\ s a -> s{_aiiPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aiiUserIP :: Lens' AdvertisersInsert' (Maybe Text)
aiiUserIP
  = lens _aiiUserIP (\ s a -> s{_aiiUserIP = a})

-- | User profile ID associated with this request.
aiiProFileId :: Lens' AdvertisersInsert' Int64
aiiProFileId
  = lens _aiiProFileId (\ s a -> s{_aiiProFileId = a})

-- | Multipart request metadata.
aiiPayload :: Lens' AdvertisersInsert' Advertiser
aiiPayload
  = lens _aiiPayload (\ s a -> s{_aiiPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aiiKey :: Lens' AdvertisersInsert' (Maybe AuthKey)
aiiKey = lens _aiiKey (\ s a -> s{_aiiKey = a})

-- | OAuth 2.0 token for the current user.
aiiOAuthToken :: Lens' AdvertisersInsert' (Maybe OAuthToken)
aiiOAuthToken
  = lens _aiiOAuthToken
      (\ s a -> s{_aiiOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
aiiFields :: Lens' AdvertisersInsert' (Maybe Text)
aiiFields
  = lens _aiiFields (\ s a -> s{_aiiFields = a})

instance GoogleAuth AdvertisersInsert' where
        _AuthKey = aiiKey . _Just
        _AuthToken = aiiOAuthToken . _Just

instance GoogleRequest AdvertisersInsert' where
        type Rs AdvertisersInsert' = Advertiser
        request = requestWith dFAReportingRequest
        requestWith rq AdvertisersInsert'{..}
          = go _aiiProFileId _aiiQuotaUser
              (Just _aiiPrettyPrint)
              _aiiUserIP
              _aiiFields
              _aiiKey
              _aiiOAuthToken
              (Just AltJSON)
              _aiiPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy AdvertisersInsertResource)
                      rq
