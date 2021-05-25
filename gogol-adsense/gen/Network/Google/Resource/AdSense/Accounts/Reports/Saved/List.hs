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
-- Module      : Network.Google.Resource.AdSense.Accounts.Reports.Saved.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists saved reports.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.reports.saved.list@.
module Network.Google.Resource.AdSense.Accounts.Reports.Saved.List
    (
    -- * REST Resource
      AccountsReportsSavedListResource

    -- * Creating a Request
    , accountsReportsSavedList
    , AccountsReportsSavedList

    -- * Request Lenses
    , arslParent
    , arslXgafv
    , arslUploadProtocol
    , arslAccessToken
    , arslUploadType
    , arslPageToken
    , arslPageSize
    , arslCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.reports.saved.list@ method which the
-- 'AccountsReportsSavedList' request conforms to.
type AccountsReportsSavedListResource =
     "v2" :>
       Capture "parent" Text :>
         "reports" :>
           "saved" :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListSavedReportsResponse

-- | Lists saved reports.
--
-- /See:/ 'accountsReportsSavedList' smart constructor.
data AccountsReportsSavedList =
  AccountsReportsSavedList'
    { _arslParent :: !Text
    , _arslXgafv :: !(Maybe Xgafv)
    , _arslUploadProtocol :: !(Maybe Text)
    , _arslAccessToken :: !(Maybe Text)
    , _arslUploadType :: !(Maybe Text)
    , _arslPageToken :: !(Maybe Text)
    , _arslPageSize :: !(Maybe (Textual Int32))
    , _arslCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsReportsSavedList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'arslParent'
--
-- * 'arslXgafv'
--
-- * 'arslUploadProtocol'
--
-- * 'arslAccessToken'
--
-- * 'arslUploadType'
--
-- * 'arslPageToken'
--
-- * 'arslPageSize'
--
-- * 'arslCallback'
accountsReportsSavedList
    :: Text -- ^ 'arslParent'
    -> AccountsReportsSavedList
accountsReportsSavedList pArslParent_ =
  AccountsReportsSavedList'
    { _arslParent = pArslParent_
    , _arslXgafv = Nothing
    , _arslUploadProtocol = Nothing
    , _arslAccessToken = Nothing
    , _arslUploadType = Nothing
    , _arslPageToken = Nothing
    , _arslPageSize = Nothing
    , _arslCallback = Nothing
    }


-- | Required. The account which owns the collection of reports. Format:
-- accounts\/{account}
arslParent :: Lens' AccountsReportsSavedList Text
arslParent
  = lens _arslParent (\ s a -> s{_arslParent = a})

-- | V1 error format.
arslXgafv :: Lens' AccountsReportsSavedList (Maybe Xgafv)
arslXgafv
  = lens _arslXgafv (\ s a -> s{_arslXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
arslUploadProtocol :: Lens' AccountsReportsSavedList (Maybe Text)
arslUploadProtocol
  = lens _arslUploadProtocol
      (\ s a -> s{_arslUploadProtocol = a})

-- | OAuth access token.
arslAccessToken :: Lens' AccountsReportsSavedList (Maybe Text)
arslAccessToken
  = lens _arslAccessToken
      (\ s a -> s{_arslAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
arslUploadType :: Lens' AccountsReportsSavedList (Maybe Text)
arslUploadType
  = lens _arslUploadType
      (\ s a -> s{_arslUploadType = a})

-- | A page token, received from a previous \`ListPayments\` call. Provide
-- this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListPayments\` must match the call that
-- provided the page token.
arslPageToken :: Lens' AccountsReportsSavedList (Maybe Text)
arslPageToken
  = lens _arslPageToken
      (\ s a -> s{_arslPageToken = a})

-- | The maximum number of reports to include in the response, used for
-- paging. If unspecified, at most 10000 reports will be returned. The
-- maximum value is 10000; values above 10000 will be coerced to 10000.
arslPageSize :: Lens' AccountsReportsSavedList (Maybe Int32)
arslPageSize
  = lens _arslPageSize (\ s a -> s{_arslPageSize = a})
      . mapping _Coerce

-- | JSONP
arslCallback :: Lens' AccountsReportsSavedList (Maybe Text)
arslCallback
  = lens _arslCallback (\ s a -> s{_arslCallback = a})

instance GoogleRequest AccountsReportsSavedList where
        type Rs AccountsReportsSavedList =
             ListSavedReportsResponse
        type Scopes AccountsReportsSavedList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsReportsSavedList'{..}
          = go _arslParent _arslXgafv _arslUploadProtocol
              _arslAccessToken
              _arslUploadType
              _arslPageToken
              _arslPageSize
              _arslCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsReportsSavedListResource)
                      mempty
