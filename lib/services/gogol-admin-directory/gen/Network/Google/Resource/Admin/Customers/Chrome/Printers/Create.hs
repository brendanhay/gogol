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
-- Module      : Network.Google.Resource.Admin.Customers.Chrome.Printers.Create
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a printer under given Organization Unit.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.create@.
module Network.Google.Resource.Admin.Customers.Chrome.Printers.Create
    (
    -- * REST Resource
      CustomersChromePrintersCreateResource

    -- * Creating a Request
    , customersChromePrintersCreate
    , CustomersChromePrintersCreate

    -- * Request Lenses
    , ccpcParent
    , ccpcXgafv
    , ccpcUploadProtocol
    , ccpcAccessToken
    , ccpcUploadType
    , ccpcPayload
    , ccpcCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customers.chrome.printers.create@ method which the
-- 'CustomersChromePrintersCreate' request conforms to.
type CustomersChromePrintersCreateResource =
     "admin" :>
       "directory" :>
         "v1" :>
           Capture "parent" Text :>
             "chrome" :>
               "printers" :>
                 QueryParam "$.xgafv" Xgafv :>
                   QueryParam "upload_protocol" Text :>
                     QueryParam "access_token" Text :>
                       QueryParam "uploadType" Text :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Printer :> Post '[JSON] Printer

-- | Creates a printer under given Organization Unit.
--
-- /See:/ 'customersChromePrintersCreate' smart constructor.
data CustomersChromePrintersCreate =
  CustomersChromePrintersCreate'
    { _ccpcParent :: !Text
    , _ccpcXgafv :: !(Maybe Xgafv)
    , _ccpcUploadProtocol :: !(Maybe Text)
    , _ccpcAccessToken :: !(Maybe Text)
    , _ccpcUploadType :: !(Maybe Text)
    , _ccpcPayload :: !Printer
    , _ccpcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersChromePrintersCreate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpcParent'
--
-- * 'ccpcXgafv'
--
-- * 'ccpcUploadProtocol'
--
-- * 'ccpcAccessToken'
--
-- * 'ccpcUploadType'
--
-- * 'ccpcPayload'
--
-- * 'ccpcCallback'
customersChromePrintersCreate
    :: Text -- ^ 'ccpcParent'
    -> Printer -- ^ 'ccpcPayload'
    -> CustomersChromePrintersCreate
customersChromePrintersCreate pCcpcParent_ pCcpcPayload_ =
  CustomersChromePrintersCreate'
    { _ccpcParent = pCcpcParent_
    , _ccpcXgafv = Nothing
    , _ccpcUploadProtocol = Nothing
    , _ccpcAccessToken = Nothing
    , _ccpcUploadType = Nothing
    , _ccpcPayload = pCcpcPayload_
    , _ccpcCallback = Nothing
    }


-- | Required. The name of the customer. Format: customers\/{customer_id}
ccpcParent :: Lens' CustomersChromePrintersCreate Text
ccpcParent
  = lens _ccpcParent (\ s a -> s{_ccpcParent = a})

-- | V1 error format.
ccpcXgafv :: Lens' CustomersChromePrintersCreate (Maybe Xgafv)
ccpcXgafv
  = lens _ccpcXgafv (\ s a -> s{_ccpcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccpcUploadProtocol :: Lens' CustomersChromePrintersCreate (Maybe Text)
ccpcUploadProtocol
  = lens _ccpcUploadProtocol
      (\ s a -> s{_ccpcUploadProtocol = a})

-- | OAuth access token.
ccpcAccessToken :: Lens' CustomersChromePrintersCreate (Maybe Text)
ccpcAccessToken
  = lens _ccpcAccessToken
      (\ s a -> s{_ccpcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccpcUploadType :: Lens' CustomersChromePrintersCreate (Maybe Text)
ccpcUploadType
  = lens _ccpcUploadType
      (\ s a -> s{_ccpcUploadType = a})

-- | Multipart request metadata.
ccpcPayload :: Lens' CustomersChromePrintersCreate Printer
ccpcPayload
  = lens _ccpcPayload (\ s a -> s{_ccpcPayload = a})

-- | JSONP
ccpcCallback :: Lens' CustomersChromePrintersCreate (Maybe Text)
ccpcCallback
  = lens _ccpcCallback (\ s a -> s{_ccpcCallback = a})

instance GoogleRequest CustomersChromePrintersCreate
         where
        type Rs CustomersChromePrintersCreate = Printer
        type Scopes CustomersChromePrintersCreate =
             '["https://www.googleapis.com/auth/admin.chrome.printers"]
        requestClient CustomersChromePrintersCreate'{..}
          = go _ccpcParent _ccpcXgafv _ccpcUploadProtocol
              _ccpcAccessToken
              _ccpcUploadType
              _ccpcCallback
              (Just AltJSON)
              _ccpcPayload
              directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CustomersChromePrintersCreateResource)
                      mempty
