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
-- Module      : Network.Google.Resource.Content.Accounts.Labels.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a label and removes it from all accounts to which it was
-- assigned.
--
-- /See:/ <https://developers.google.com/shopping-content/v2/ Content API for Shopping Reference> for @content.accounts.labels.delete@.
module Network.Google.Resource.Content.Accounts.Labels.Delete
    (
    -- * REST Resource
      AccountsLabelsDeleteResource

    -- * Creating a Request
    , accountsLabelsDelete
    , AccountsLabelsDelete

    -- * Request Lenses
    , aldXgafv
    , aldUploadProtocol
    , aldAccessToken
    , aldUploadType
    , aldAccountId
    , aldLabelId
    , aldCallback
    ) where

import Network.Google.Prelude
import Network.Google.ShoppingContent.Types

-- | A resource alias for @content.accounts.labels.delete@ method which the
-- 'AccountsLabelsDelete' request conforms to.
type AccountsLabelsDeleteResource =
     "content" :>
       "v2.1" :>
         "accounts" :>
           Capture "accountId" (Textual Int64) :>
             "labels" :>
               Capture "labelId" (Textual Int64) :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Deletes a label and removes it from all accounts to which it was
-- assigned.
--
-- /See:/ 'accountsLabelsDelete' smart constructor.
data AccountsLabelsDelete =
  AccountsLabelsDelete'
    { _aldXgafv :: !(Maybe Xgafv)
    , _aldUploadProtocol :: !(Maybe Text)
    , _aldAccessToken :: !(Maybe Text)
    , _aldUploadType :: !(Maybe Text)
    , _aldAccountId :: !(Textual Int64)
    , _aldLabelId :: !(Textual Int64)
    , _aldCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsLabelsDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aldXgafv'
--
-- * 'aldUploadProtocol'
--
-- * 'aldAccessToken'
--
-- * 'aldUploadType'
--
-- * 'aldAccountId'
--
-- * 'aldLabelId'
--
-- * 'aldCallback'
accountsLabelsDelete
    :: Int64 -- ^ 'aldAccountId'
    -> Int64 -- ^ 'aldLabelId'
    -> AccountsLabelsDelete
accountsLabelsDelete pAldAccountId_ pAldLabelId_ =
  AccountsLabelsDelete'
    { _aldXgafv = Nothing
    , _aldUploadProtocol = Nothing
    , _aldAccessToken = Nothing
    , _aldUploadType = Nothing
    , _aldAccountId = _Coerce # pAldAccountId_
    , _aldLabelId = _Coerce # pAldLabelId_
    , _aldCallback = Nothing
    }


-- | V1 error format.
aldXgafv :: Lens' AccountsLabelsDelete (Maybe Xgafv)
aldXgafv = lens _aldXgafv (\ s a -> s{_aldXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aldUploadProtocol :: Lens' AccountsLabelsDelete (Maybe Text)
aldUploadProtocol
  = lens _aldUploadProtocol
      (\ s a -> s{_aldUploadProtocol = a})

-- | OAuth access token.
aldAccessToken :: Lens' AccountsLabelsDelete (Maybe Text)
aldAccessToken
  = lens _aldAccessToken
      (\ s a -> s{_aldAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aldUploadType :: Lens' AccountsLabelsDelete (Maybe Text)
aldUploadType
  = lens _aldUploadType
      (\ s a -> s{_aldUploadType = a})

-- | Required. The id of the account that owns the label.
aldAccountId :: Lens' AccountsLabelsDelete Int64
aldAccountId
  = lens _aldAccountId (\ s a -> s{_aldAccountId = a})
      . _Coerce

-- | Required. The id of the label to delete.
aldLabelId :: Lens' AccountsLabelsDelete Int64
aldLabelId
  = lens _aldLabelId (\ s a -> s{_aldLabelId = a}) .
      _Coerce

-- | JSONP
aldCallback :: Lens' AccountsLabelsDelete (Maybe Text)
aldCallback
  = lens _aldCallback (\ s a -> s{_aldCallback = a})

instance GoogleRequest AccountsLabelsDelete where
        type Rs AccountsLabelsDelete = ()
        type Scopes AccountsLabelsDelete =
             '["https://www.googleapis.com/auth/content"]
        requestClient AccountsLabelsDelete'{..}
          = go _aldAccountId _aldLabelId _aldXgafv
              _aldUploadProtocol
              _aldAccessToken
              _aldUploadType
              _aldCallback
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsLabelsDeleteResource)
                      mempty
