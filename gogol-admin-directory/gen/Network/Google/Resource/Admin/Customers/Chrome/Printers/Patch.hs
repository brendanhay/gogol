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
-- Module      : Network.Google.Resource.Admin.Customers.Chrome.Printers.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a \`Printer\` resource.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.patch@.
module Network.Google.Resource.Admin.Customers.Chrome.Printers.Patch
    (
    -- * REST Resource
      CustomersChromePrintersPatchResource

    -- * Creating a Request
    , customersChromePrintersPatch
    , CustomersChromePrintersPatch

    -- * Request Lenses
    , ccppXgafv
    , ccppUploadProtocol
    , ccppUpdateMask
    , ccppAccessToken
    , ccppUploadType
    , ccppPayload
    , ccppName
    , ccppClearMask
    , ccppCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customers.chrome.printers.patch@ method which the
-- 'CustomersChromePrintersPatch' request conforms to.
type CustomersChromePrintersPatchResource =
     "admin" :>
       "directory" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "updateMask" GFieldMask :>
                   QueryParam "access_token" Text :>
                     QueryParam "uploadType" Text :>
                       QueryParam "clearMask" GFieldMask :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] Printer :> Patch '[JSON] Printer

-- | Updates a \`Printer\` resource.
--
-- /See:/ 'customersChromePrintersPatch' smart constructor.
data CustomersChromePrintersPatch =
  CustomersChromePrintersPatch'
    { _ccppXgafv :: !(Maybe Xgafv)
    , _ccppUploadProtocol :: !(Maybe Text)
    , _ccppUpdateMask :: !(Maybe GFieldMask)
    , _ccppAccessToken :: !(Maybe Text)
    , _ccppUploadType :: !(Maybe Text)
    , _ccppPayload :: !Printer
    , _ccppName :: !Text
    , _ccppClearMask :: !(Maybe GFieldMask)
    , _ccppCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersChromePrintersPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccppXgafv'
--
-- * 'ccppUploadProtocol'
--
-- * 'ccppUpdateMask'
--
-- * 'ccppAccessToken'
--
-- * 'ccppUploadType'
--
-- * 'ccppPayload'
--
-- * 'ccppName'
--
-- * 'ccppClearMask'
--
-- * 'ccppCallback'
customersChromePrintersPatch
    :: Printer -- ^ 'ccppPayload'
    -> Text -- ^ 'ccppName'
    -> CustomersChromePrintersPatch
customersChromePrintersPatch pCcppPayload_ pCcppName_ =
  CustomersChromePrintersPatch'
    { _ccppXgafv = Nothing
    , _ccppUploadProtocol = Nothing
    , _ccppUpdateMask = Nothing
    , _ccppAccessToken = Nothing
    , _ccppUploadType = Nothing
    , _ccppPayload = pCcppPayload_
    , _ccppName = pCcppName_
    , _ccppClearMask = Nothing
    , _ccppCallback = Nothing
    }


-- | V1 error format.
ccppXgafv :: Lens' CustomersChromePrintersPatch (Maybe Xgafv)
ccppXgafv
  = lens _ccppXgafv (\ s a -> s{_ccppXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccppUploadProtocol :: Lens' CustomersChromePrintersPatch (Maybe Text)
ccppUploadProtocol
  = lens _ccppUploadProtocol
      (\ s a -> s{_ccppUploadProtocol = a})

-- | The list of fields to be updated. Note, some of the fields are read only
-- and cannot be updated. Values for not specified fields will be patched.
ccppUpdateMask :: Lens' CustomersChromePrintersPatch (Maybe GFieldMask)
ccppUpdateMask
  = lens _ccppUpdateMask
      (\ s a -> s{_ccppUpdateMask = a})

-- | OAuth access token.
ccppAccessToken :: Lens' CustomersChromePrintersPatch (Maybe Text)
ccppAccessToken
  = lens _ccppAccessToken
      (\ s a -> s{_ccppAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccppUploadType :: Lens' CustomersChromePrintersPatch (Maybe Text)
ccppUploadType
  = lens _ccppUploadType
      (\ s a -> s{_ccppUploadType = a})

-- | Multipart request metadata.
ccppPayload :: Lens' CustomersChromePrintersPatch Printer
ccppPayload
  = lens _ccppPayload (\ s a -> s{_ccppPayload = a})

-- | The resource name of the Printer object, in the format
-- customers\/{customer-id}\/printers\/{printer-id} (During printer
-- creation leave empty)
ccppName :: Lens' CustomersChromePrintersPatch Text
ccppName = lens _ccppName (\ s a -> s{_ccppName = a})

-- | The list of fields to be cleared. Note, some of the fields are read only
-- and cannot be updated. Values for not specified fields will be patched.
ccppClearMask :: Lens' CustomersChromePrintersPatch (Maybe GFieldMask)
ccppClearMask
  = lens _ccppClearMask
      (\ s a -> s{_ccppClearMask = a})

-- | JSONP
ccppCallback :: Lens' CustomersChromePrintersPatch (Maybe Text)
ccppCallback
  = lens _ccppCallback (\ s a -> s{_ccppCallback = a})

instance GoogleRequest CustomersChromePrintersPatch
         where
        type Rs CustomersChromePrintersPatch = Printer
        type Scopes CustomersChromePrintersPatch =
             '["https://www.googleapis.com/auth/admin.chrome.printers"]
        requestClient CustomersChromePrintersPatch'{..}
          = go _ccppName _ccppXgafv _ccppUploadProtocol
              _ccppUpdateMask
              _ccppAccessToken
              _ccppUploadType
              _ccppClearMask
              _ccppCallback
              (Just AltJSON)
              _ccppPayload
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersChromePrintersPatchResource)
                      mempty
