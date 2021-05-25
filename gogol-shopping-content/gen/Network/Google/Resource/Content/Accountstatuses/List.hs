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
-- Module      : Network.Google.Resource.Content.Accountstatuses.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accountstatuses.list@.
module Network.Google.Resource.Content.Accountstatuses.List
    (
    -- * REST Resource
      AccountstatusesListResource

    -- * Creating a Request
    , accountstatusesList
    , AccountstatusesList

    -- * Request Lenses
    , acc1Xgafv
    , acc1MerchantId
    , acc1UploadProtocol
    , acc1AccessToken
    , acc1UploadType
    , acc1Destinations
    , acc1Name
    , acc1PageToken
    , acc1MaxResults
    , acc1Callback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accountstatuses.list@ method which the
-- 'AccountstatusesList' request conforms to.
type AccountstatusesListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "accountstatuses" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParams "destinations" Text :>
                       QueryParam "name" Text :>
                         QueryParam "pageToken" Text :>
                           QueryParam "maxResults" (Textual Word32) :>
                             QueryParam "callback" Text :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] AccountstatusesListResponse

-- | Lists the statuses of the sub-accounts in your Merchant Center account.
--
-- /See:/ 'accountstatusesList' smart constructor.
data AccountstatusesList =
  AccountstatusesList'
    { _acc1Xgafv :: !(Maybe Xgafv)
    , _acc1MerchantId :: !(Textual Word64)
    , _acc1UploadProtocol :: !(Maybe Text)
    , _acc1AccessToken :: !(Maybe Text)
    , _acc1UploadType :: !(Maybe Text)
    , _acc1Destinations :: !(Maybe [Text])
    , _acc1Name :: !(Maybe Text)
    , _acc1PageToken :: !(Maybe Text)
    , _acc1MaxResults :: !(Maybe (Textual Word32))
    , _acc1Callback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountstatusesList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'acc1Xgafv'
--
-- * 'acc1MerchantId'
--
-- * 'acc1UploadProtocol'
--
-- * 'acc1AccessToken'
--
-- * 'acc1UploadType'
--
-- * 'acc1Destinations'
--
-- * 'acc1Name'
--
-- * 'acc1PageToken'
--
-- * 'acc1MaxResults'
--
-- * 'acc1Callback'
accountstatusesList
    :: Word64 -- ^ 'acc1MerchantId'
    -> AccountstatusesList
accountstatusesList pAcc1MerchantId_ =
  AccountstatusesList'
    { _acc1Xgafv = Nothing
    , _acc1MerchantId = _Coerce # pAcc1MerchantId_
    , _acc1UploadProtocol = Nothing
    , _acc1AccessToken = Nothing
    , _acc1UploadType = Nothing
    , _acc1Destinations = Nothing
    , _acc1Name = Nothing
    , _acc1PageToken = Nothing
    , _acc1MaxResults = Nothing
    , _acc1Callback = Nothing
    }


-- | V1 error format.
acc1Xgafv :: Lens' AccountstatusesList (Maybe Xgafv)
acc1Xgafv
  = lens _acc1Xgafv (\ s a -> s{_acc1Xgafv = a})

-- | The ID of the managing account. This must be a multi-client account.
acc1MerchantId :: Lens' AccountstatusesList Word64
acc1MerchantId
  = lens _acc1MerchantId
      (\ s a -> s{_acc1MerchantId = a})
      . _Coerce

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
acc1UploadProtocol :: Lens' AccountstatusesList (Maybe Text)
acc1UploadProtocol
  = lens _acc1UploadProtocol
      (\ s a -> s{_acc1UploadProtocol = a})

-- | OAuth access token.
acc1AccessToken :: Lens' AccountstatusesList (Maybe Text)
acc1AccessToken
  = lens _acc1AccessToken
      (\ s a -> s{_acc1AccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
acc1UploadType :: Lens' AccountstatusesList (Maybe Text)
acc1UploadType
  = lens _acc1UploadType
      (\ s a -> s{_acc1UploadType = a})

-- | If set, only issues for the specified destinations are returned,
-- otherwise only issues for the Shopping destination.
acc1Destinations :: Lens' AccountstatusesList [Text]
acc1Destinations
  = lens _acc1Destinations
      (\ s a -> s{_acc1Destinations = a})
      . _Default
      . _Coerce

-- | If set, only the accounts with the given name (case sensitive) will be
-- returned.
acc1Name :: Lens' AccountstatusesList (Maybe Text)
acc1Name = lens _acc1Name (\ s a -> s{_acc1Name = a})

-- | The token returned by the previous request.
acc1PageToken :: Lens' AccountstatusesList (Maybe Text)
acc1PageToken
  = lens _acc1PageToken
      (\ s a -> s{_acc1PageToken = a})

-- | The maximum number of account statuses to return in the response, used
-- for paging.
acc1MaxResults :: Lens' AccountstatusesList (Maybe Word32)
acc1MaxResults
  = lens _acc1MaxResults
      (\ s a -> s{_acc1MaxResults = a})
      . mapping _Coerce

-- | JSONP
acc1Callback :: Lens' AccountstatusesList (Maybe Text)
acc1Callback
  = lens _acc1Callback (\ s a -> s{_acc1Callback = a})

instance GoogleRequest AccountstatusesList where
        type Rs AccountstatusesList =
             AccountstatusesListResponse
        type Scopes AccountstatusesList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountstatusesList'{..}
          = go _acc1MerchantId _acc1Xgafv _acc1UploadProtocol
              _acc1AccessToken
              _acc1UploadType
              (_acc1Destinations ^. _Default)
              _acc1Name
              _acc1PageToken
              _acc1MaxResults
              _acc1Callback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountstatusesListResource)
                      mempty
