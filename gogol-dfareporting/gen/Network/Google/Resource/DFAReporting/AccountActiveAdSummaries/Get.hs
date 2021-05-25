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
-- Module      : Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the account\'s active ad summary by account ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/ Campaign Manager 360 API Reference> for @dfareporting.accountActiveAdSummaries.get@.
module Network.Google.Resource.DFAReporting.AccountActiveAdSummaries.Get
    (
    -- * REST Resource
      AccountActiveAdSummariesGetResource

    -- * Creating a Request
    , accountActiveAdSummariesGet
    , AccountActiveAdSummariesGet

    -- * Request Lenses
    , aaasgXgafv
    , aaasgUploadProtocol
    , aaasgAccessToken
    , aaasgUploadType
    , aaasgProFileId
    , aaasgSummaryAccountId
    , aaasgCallback
    ) where

import Network.Google.DFAReporting.Types
import Network.Google.Prelude

-- | A resource alias for @dfareporting.accountActiveAdSummaries.get@ method which the
-- 'AccountActiveAdSummariesGet' request conforms to.
type AccountActiveAdSummariesGetResource =
     "dfareporting" :>
       "v3.5" :>
         "userprofiles" :>
           Capture "profileId" (Textual Int64) :>
             "accountActiveAdSummaries" :>
               Capture "summaryAccountId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] AccountActiveAdSummary

-- | Gets the account\'s active ad summary by account ID.
--
-- /See:/ 'accountActiveAdSummariesGet' smart constructor.
data AccountActiveAdSummariesGet =
  AccountActiveAdSummariesGet'
    { _aaasgXgafv :: !(Maybe Xgafv)
    , _aaasgUploadProtocol :: !(Maybe Text)
    , _aaasgAccessToken :: !(Maybe Text)
    , _aaasgUploadType :: !(Maybe Text)
    , _aaasgProFileId :: !(Textual Int64)
    , _aaasgSummaryAccountId :: !(Textual Int64)
    , _aaasgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountActiveAdSummariesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aaasgXgafv'
--
-- * 'aaasgUploadProtocol'
--
-- * 'aaasgAccessToken'
--
-- * 'aaasgUploadType'
--
-- * 'aaasgProFileId'
--
-- * 'aaasgSummaryAccountId'
--
-- * 'aaasgCallback'
accountActiveAdSummariesGet
    :: Int64 -- ^ 'aaasgProFileId'
    -> Int64 -- ^ 'aaasgSummaryAccountId'
    -> AccountActiveAdSummariesGet
accountActiveAdSummariesGet pAaasgProFileId_ pAaasgSummaryAccountId_ =
  AccountActiveAdSummariesGet'
    { _aaasgXgafv = Nothing
    , _aaasgUploadProtocol = Nothing
    , _aaasgAccessToken = Nothing
    , _aaasgUploadType = Nothing
    , _aaasgProFileId = _Coerce # pAaasgProFileId_
    , _aaasgSummaryAccountId = _Coerce # pAaasgSummaryAccountId_
    , _aaasgCallback = Nothing
    }


-- | V1 error format.
aaasgXgafv :: Lens' AccountActiveAdSummariesGet (Maybe Xgafv)
aaasgXgafv
  = lens _aaasgXgafv (\ s a -> s{_aaasgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aaasgUploadProtocol :: Lens' AccountActiveAdSummariesGet (Maybe Text)
aaasgUploadProtocol
  = lens _aaasgUploadProtocol
      (\ s a -> s{_aaasgUploadProtocol = a})

-- | OAuth access token.
aaasgAccessToken :: Lens' AccountActiveAdSummariesGet (Maybe Text)
aaasgAccessToken
  = lens _aaasgAccessToken
      (\ s a -> s{_aaasgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aaasgUploadType :: Lens' AccountActiveAdSummariesGet (Maybe Text)
aaasgUploadType
  = lens _aaasgUploadType
      (\ s a -> s{_aaasgUploadType = a})

-- | User profile ID associated with this request.
aaasgProFileId :: Lens' AccountActiveAdSummariesGet Int64
aaasgProFileId
  = lens _aaasgProFileId
      (\ s a -> s{_aaasgProFileId = a})
      . _Coerce

-- | Account ID.
aaasgSummaryAccountId :: Lens' AccountActiveAdSummariesGet Int64
aaasgSummaryAccountId
  = lens _aaasgSummaryAccountId
      (\ s a -> s{_aaasgSummaryAccountId = a})
      . _Coerce

-- | JSONP
aaasgCallback :: Lens' AccountActiveAdSummariesGet (Maybe Text)
aaasgCallback
  = lens _aaasgCallback
      (\ s a -> s{_aaasgCallback = a})

instance GoogleRequest AccountActiveAdSummariesGet
         where
        type Rs AccountActiveAdSummariesGet =
             AccountActiveAdSummary
        type Scopes AccountActiveAdSummariesGet =
             '["https://www.googleapis.com/auth/dfatrafficking"]
        requestClient AccountActiveAdSummariesGet'{..}
          = go _aaasgProFileId _aaasgSummaryAccountId
              _aaasgXgafv
              _aaasgUploadProtocol
              _aaasgAccessToken
              _aaasgUploadType
              _aaasgCallback
              (Just AltJSON)
              dFAReportingService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountActiveAdSummariesGetResource)
                      mempty
