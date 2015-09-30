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
-- Module      : Network.Google.Resource.DFAReporting.Sizes.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Inserts a new size.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingSizesInsert@.
module Network.Google.Resource.DFAReporting.Sizes.Insert
    (
    -- * REST Resource
      SizesInsertResource

    -- * Creating a Request
    , sizesInsert'
    , SizesInsert'

    -- * Request Lenses
    , sizQuotaUser
    , sizPrettyPrint
    , sizUserIp
    , sizProfileId
    , sizKey
    , sizOauthToken
    , sizFields
    , sizAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesInsert@ which the
-- 'SizesInsert'' request conforms to.
type SizesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "oauth_token" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "alt" Alt :> Post '[JSON] Size

-- | Inserts a new size.
--
-- /See:/ 'sizesInsert'' smart constructor.
data SizesInsert' = SizesInsert'
    { _sizQuotaUser   :: !(Maybe Text)
    , _sizPrettyPrint :: !Bool
    , _sizUserIp      :: !(Maybe Text)
    , _sizProfileId   :: !Int64
    , _sizKey         :: !(Maybe Text)
    , _sizOauthToken  :: !(Maybe Text)
    , _sizFields      :: !(Maybe Text)
    , _sizAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sizQuotaUser'
--
-- * 'sizPrettyPrint'
--
-- * 'sizUserIp'
--
-- * 'sizProfileId'
--
-- * 'sizKey'
--
-- * 'sizOauthToken'
--
-- * 'sizFields'
--
-- * 'sizAlt'
sizesInsert'
    :: Int64 -- ^ 'profileId'
    -> SizesInsert'
sizesInsert' pSizProfileId_ =
    SizesInsert'
    { _sizQuotaUser = Nothing
    , _sizPrettyPrint = True
    , _sizUserIp = Nothing
    , _sizProfileId = pSizProfileId_
    , _sizKey = Nothing
    , _sizOauthToken = Nothing
    , _sizFields = Nothing
    , _sizAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sizQuotaUser :: Lens' SizesInsert' (Maybe Text)
sizQuotaUser
  = lens _sizQuotaUser (\ s a -> s{_sizQuotaUser = a})

-- | Returns response with indentations and line breaks.
sizPrettyPrint :: Lens' SizesInsert' Bool
sizPrettyPrint
  = lens _sizPrettyPrint
      (\ s a -> s{_sizPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sizUserIp :: Lens' SizesInsert' (Maybe Text)
sizUserIp
  = lens _sizUserIp (\ s a -> s{_sizUserIp = a})

-- | User profile ID associated with this request.
sizProfileId :: Lens' SizesInsert' Int64
sizProfileId
  = lens _sizProfileId (\ s a -> s{_sizProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sizKey :: Lens' SizesInsert' (Maybe Text)
sizKey = lens _sizKey (\ s a -> s{_sizKey = a})

-- | OAuth 2.0 token for the current user.
sizOauthToken :: Lens' SizesInsert' (Maybe Text)
sizOauthToken
  = lens _sizOauthToken
      (\ s a -> s{_sizOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sizFields :: Lens' SizesInsert' (Maybe Text)
sizFields
  = lens _sizFields (\ s a -> s{_sizFields = a})

-- | Data format for the response.
sizAlt :: Lens' SizesInsert' Alt
sizAlt = lens _sizAlt (\ s a -> s{_sizAlt = a})

instance GoogleRequest SizesInsert' where
        type Rs SizesInsert' = Size
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesInsert'{..}
          = go _sizQuotaUser (Just _sizPrettyPrint) _sizUserIp
              _sizProfileId
              _sizKey
              _sizOauthToken
              _sizFields
              (Just _sizAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy SizesInsertResource)
                      r
                      u
