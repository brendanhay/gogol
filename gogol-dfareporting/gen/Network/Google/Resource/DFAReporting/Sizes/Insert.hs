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
    , sQuotaUser
    , sPrettyPrint
    , sUserIP
    , sProFileId
    , sPayload
    , sKey
    , sOAuthToken
    , sFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingSizesInsert@ method which the
-- 'SizesInsert'' request conforms to.
type SizesInsertResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "sizes" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     Header "Authorization" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Size :> Post '[JSON] Size

-- | Inserts a new size.
--
-- /See:/ 'sizesInsert'' smart constructor.
data SizesInsert' = SizesInsert'
    { _sQuotaUser   :: !(Maybe Text)
    , _sPrettyPrint :: !Bool
    , _sUserIP      :: !(Maybe Text)
    , _sProFileId   :: !Int64
    , _sPayload     :: !Size
    , _sKey         :: !(Maybe AuthKey)
    , _sOAuthToken  :: !(Maybe OAuthToken)
    , _sFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SizesInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sQuotaUser'
--
-- * 'sPrettyPrint'
--
-- * 'sUserIP'
--
-- * 'sProFileId'
--
-- * 'sPayload'
--
-- * 'sKey'
--
-- * 'sOAuthToken'
--
-- * 'sFields'
sizesInsert'
    :: Int64 -- ^ 'profileId'
    -> Size -- ^ 'payload'
    -> SizesInsert'
sizesInsert' pSProFileId_ pSPayload_ =
    SizesInsert'
    { _sQuotaUser = Nothing
    , _sPrettyPrint = True
    , _sUserIP = Nothing
    , _sProFileId = pSProFileId_
    , _sPayload = pSPayload_
    , _sKey = Nothing
    , _sOAuthToken = Nothing
    , _sFields = Nothing
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
sUserIP :: Lens' SizesInsert' (Maybe Text)
sUserIP = lens _sUserIP (\ s a -> s{_sUserIP = a})

-- | User profile ID associated with this request.
sProFileId :: Lens' SizesInsert' Int64
sProFileId
  = lens _sProFileId (\ s a -> s{_sProFileId = a})

-- | Multipart request metadata.
sPayload :: Lens' SizesInsert' Size
sPayload = lens _sPayload (\ s a -> s{_sPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
sKey :: Lens' SizesInsert' (Maybe AuthKey)
sKey = lens _sKey (\ s a -> s{_sKey = a})

-- | OAuth 2.0 token for the current user.
sOAuthToken :: Lens' SizesInsert' (Maybe OAuthToken)
sOAuthToken
  = lens _sOAuthToken (\ s a -> s{_sOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
sFields :: Lens' SizesInsert' (Maybe Text)
sFields = lens _sFields (\ s a -> s{_sFields = a})

instance GoogleAuth SizesInsert' where
        _AuthKey = sKey . _Just
        _AuthToken = sOAuthToken . _Just

instance GoogleRequest SizesInsert' where
        type Rs SizesInsert' = Size
        request = requestWith dFAReportingRequest
        requestWith rq SizesInsert'{..}
          = go _sProFileId _sQuotaUser (Just _sPrettyPrint)
              _sUserIP
              _sFields
              _sKey
              _sOAuthToken
              (Just AltJSON)
              _sPayload
          where go
                  = clientBuild (Proxy :: Proxy SizesInsertResource) rq
