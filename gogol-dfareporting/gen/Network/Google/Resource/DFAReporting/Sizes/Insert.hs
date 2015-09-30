{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module DFAReporting.Sizes.Insert
    (
    -- * REST Resource
      SizesInsertAPI

    -- * Creating a Request
    , sizesInsert
    , SizesInsert

    -- * Request Lenses
    , sQuotaUser
    , sPrettyPrint
    , sUserIp
    , sProfileId
    , sKey
    , sOauthToken
    , sFields
    , sAlt
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesInsert@ which the
-- 'SizesInsert' request conforms to.
type SizesInsertAPI =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :> Post '[JSON] Size

-- | Inserts a new size.
--
-- /See:/ 'sizesInsert' smart constructor.
data SizesInsert = SizesInsert
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIp      :: !(Maybe Text)
    , _sProfileId   :: !Int64
    , _sKey         :: !(Maybe Text)
    , _sOauthToken  :: !(Maybe Text)
    , _sFields      :: !(Maybe Text)
    , _sAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIp'
--
-- * 'sProfileId'
--
-- * 'sKey'
--
-- * 'sOauthToken'
--
-- * 'sFields'
--
-- * 'sAlt'
sizesInsert
    :: Int64 -- ^ 'profileId'
    -> SizesInsert
sizesInsert pSProfileId_ =
    SizesInsert
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIp = Nothing
    , _sProfileId = pSProfileId_
    , _sKey = Nothing
    , _sOauthToken = Nothing
    , _sFields = Nothing
    , _sAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
sQuotaUser :: Lens' SizesInsert' (Maybe Text)
sQuotaUser
  = lens _sQuotaUser (\ s a -> s{_sQuotaUser = a})

-- | Returns response with indentations and line breaks.
sPrettyPrint :: Lens' SizesInsert' Bool
sPrettyPrint
  = lens _sPrettyPrint (\ s a -> s{_sPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
sUserIp :: Lens' SizesInsert' (Maybe Text)
sUserIp = lens _sUserIp (\ s a -> s{_sUserIp = a})

-- | User profile ID associated with this request.
sProfileId :: Lens' SizesInsert' Int64
sProfileId
  = lens _sProfileId (\ s a -> s{_sProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SizesInsert' (Maybe Text)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOauthToken :: Lens' SizesInsert' (Maybe Text)
sOauthToken
  = lens _sOauthToken (\ s a -> s{_sOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SizesInsert' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

-- | Data format for the response.
sAlt :: Lens' SizesInsert' Text
sAlt = lens _sAlt (\ s a -> s{_sAlt = a})

instance GoogleRequest SizesInsert' where
        type Rs SizesInsert' = Size
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u SizesInsert{..}
          = go _sQuotaUser _sPrettyPrint _sUserIp _sProfileId
              _sKey
              _sOauthToken
              _sFields
              _sAlt
          where go
                  = clientWithRoute (Proxy :: Proxy SizesInsertAPI) r u
