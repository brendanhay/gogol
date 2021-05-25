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
-- Module      : Network.Google.Resource.Content.Accounts.Labels.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the labels assigned to an account.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.labels.list@.
module Network.Google.Resource.Content.Accounts.Labels.List
    (
    -- * REST Resource
      AccountsLabelsListResource

    -- * Creating a Request
    , accountsLabelsList
    , AccountsLabelsList

    -- * Request Lenses
    , alllXgafv
    , alllUploadProtocol
    , alllAccessToken
    , alllUploadType
    , alllAccountId
    , alllPageToken
    , alllPageSize
    , alllCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.labels.list@ method which the
-- 'AccountsLabelsList' request conforms to.
type AccountsLabelsListResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "labels" :>
               QueryParam "$.xgafv" Xgafv :>
                 QueryParam "upload_protocol" Text :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "pageToken" Text :>
                         QueryParam "pageSize" (Textual Int32) :>
                           QueryParam "callback" Text :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] ListAccountLabelsResponse

-- | Lists the labels assigned to an account.
--
-- /See:/ 'accountsLabelsList' smart constructor.
data AccountsLabelsList =
  AccountsLabelsList'
    { _alllXgafv :: !(Maybe Xgafv)
    , _alllUploadProtocol :: !(Maybe Text)
    , _alllAccessToken :: !(Maybe Text)
    , _alllUploadType :: !(Maybe Text)
    , _alllAccountId :: !(Textual Int64)
    , _alllPageToken :: !(Maybe Text)
    , _alllPageSize :: !(Maybe (Textual Int32))
    , _alllCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsLabelsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alllXgafv'
--
-- * 'alllUploadProtocol'
--
-- * 'alllAccessToken'
--
-- * 'alllUploadType'
--
-- * 'alllAccountId'
--
-- * 'alllPageToken'
--
-- * 'alllPageSize'
--
-- * 'alllCallback'
accountsLabelsList
    :: Int64 -- ^ 'alllAccountId'
    -> AccountsLabelsList
accountsLabelsList pAlllAccountId_ =
  AccountsLabelsList'
    { _alllXgafv = Nothing
    , _alllUploadProtocol = Nothing
    , _alllAccessToken = Nothing
    , _alllUploadType = Nothing
    , _alllAccountId = _Coerce # pAlllAccountId_
    , _alllPageToken = Nothing
    , _alllPageSize = Nothing
    , _alllCallback = Nothing
    }


-- | V1 error format.
alllXgafv :: Lens' AccountsLabelsList (Maybe Xgafv)
alllXgafv
  = lens _alllXgafv (\ s a -> s{_alllXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
alllUploadProtocol :: Lens' AccountsLabelsList (Maybe Text)
alllUploadProtocol
  = lens _alllUploadProtocol
      (\ s a -> s{_alllUploadProtocol = a})

-- | OAuth access token.
alllAccessToken :: Lens' AccountsLabelsList (Maybe Text)
alllAccessToken
  = lens _alllAccessToken
      (\ s a -> s{_alllAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
alllUploadType :: Lens' AccountsLabelsList (Maybe Text)
alllUploadType
  = lens _alllUploadType
      (\ s a -> s{_alllUploadType = a})

-- | Required. The account id for whose labels are to be listed.
alllAccountId :: Lens' AccountsLabelsList Int64
alllAccountId
  = lens _alllAccountId
      (\ s a -> s{_alllAccountId = a})
      . _Coerce

-- | A page token, received from a previous \`ListAccountLabels\` call.
-- Provide this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListAccountLabels\` must match the call that
-- provided the page token.
alllPageToken :: Lens' AccountsLabelsList (Maybe Text)
alllPageToken
  = lens _alllPageToken
      (\ s a -> s{_alllPageToken = a})

-- | The maximum number of labels to return. The service may return fewer
-- than this value. If unspecified, at most 50 labels will be returned. The
-- maximum value is 1000; values above 1000 will be coerced to 1000.
alllPageSize :: Lens' AccountsLabelsList (Maybe Int32)
alllPageSize
  = lens _alllPageSize (\ s a -> s{_alllPageSize = a})
      . mapping _Coerce

-- | JSONP
alllCallback :: Lens' AccountsLabelsList (Maybe Text)
alllCallback
  = lens _alllCallback (\ s a -> s{_alllCallback = a})

instance GoogleRequest AccountsLabelsList where
        type Rs AccountsLabelsList =
             ListAccountLabelsResponse
        type Scopes AccountsLabelsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsLabelsList'{..}
          = go _alllAccountId _alllXgafv _alllUploadProtocol
              _alllAccessToken
              _alllUploadType
              _alllPageToken
              _alllPageSize
              _alllCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsLabelsListResource)
                      mempty
