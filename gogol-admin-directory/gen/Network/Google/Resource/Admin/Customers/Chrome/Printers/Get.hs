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
-- Module      : Network.Google.Resource.Admin.Customers.Chrome.Printers.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a \`Printer\` resource (printer\'s config).
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.get@.
module Network.Google.Resource.Admin.Customers.Chrome.Printers.Get
    (
    -- * REST Resource
      CustomersChromePrintersGetResource

    -- * Creating a Request
    , customersChromePrintersGet
    , CustomersChromePrintersGet

    -- * Request Lenses
    , ccpgXgafv
    , ccpgUploadProtocol
    , ccpgAccessToken
    , ccpgUploadType
    , ccpgName
    , ccpgCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customers.chrome.printers.get@ method which the
-- 'CustomersChromePrintersGet' request conforms to.
type CustomersChromePrintersGetResource =
     "admin" :>
       "directory" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] Printer

-- | Returns a \`Printer\` resource (printer\'s config).
--
-- /See:/ 'customersChromePrintersGet' smart constructor.
data CustomersChromePrintersGet =
  CustomersChromePrintersGet'
    { _ccpgXgafv :: !(Maybe Xgafv)
    , _ccpgUploadProtocol :: !(Maybe Text)
    , _ccpgAccessToken :: !(Maybe Text)
    , _ccpgUploadType :: !(Maybe Text)
    , _ccpgName :: !Text
    , _ccpgCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersChromePrintersGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpgXgafv'
--
-- * 'ccpgUploadProtocol'
--
-- * 'ccpgAccessToken'
--
-- * 'ccpgUploadType'
--
-- * 'ccpgName'
--
-- * 'ccpgCallback'
customersChromePrintersGet
    :: Text -- ^ 'ccpgName'
    -> CustomersChromePrintersGet
customersChromePrintersGet pCcpgName_ =
  CustomersChromePrintersGet'
    { _ccpgXgafv = Nothing
    , _ccpgUploadProtocol = Nothing
    , _ccpgAccessToken = Nothing
    , _ccpgUploadType = Nothing
    , _ccpgName = pCcpgName_
    , _ccpgCallback = Nothing
    }


-- | V1 error format.
ccpgXgafv :: Lens' CustomersChromePrintersGet (Maybe Xgafv)
ccpgXgafv
  = lens _ccpgXgafv (\ s a -> s{_ccpgXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccpgUploadProtocol :: Lens' CustomersChromePrintersGet (Maybe Text)
ccpgUploadProtocol
  = lens _ccpgUploadProtocol
      (\ s a -> s{_ccpgUploadProtocol = a})

-- | OAuth access token.
ccpgAccessToken :: Lens' CustomersChromePrintersGet (Maybe Text)
ccpgAccessToken
  = lens _ccpgAccessToken
      (\ s a -> s{_ccpgAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccpgUploadType :: Lens' CustomersChromePrintersGet (Maybe Text)
ccpgUploadType
  = lens _ccpgUploadType
      (\ s a -> s{_ccpgUploadType = a})

-- | Required. The name of the printer to retrieve. Format:
-- customers\/{customer_id}\/chrome\/printers\/{printer_id}
ccpgName :: Lens' CustomersChromePrintersGet Text
ccpgName = lens _ccpgName (\ s a -> s{_ccpgName = a})

-- | JSONP
ccpgCallback :: Lens' CustomersChromePrintersGet (Maybe Text)
ccpgCallback
  = lens _ccpgCallback (\ s a -> s{_ccpgCallback = a})

instance GoogleRequest CustomersChromePrintersGet
         where
        type Rs CustomersChromePrintersGet = Printer
        type Scopes CustomersChromePrintersGet =
             '["https://www.googleapis.com/auth/admin.chrome.printers",
               "https://www.googleapis.com/auth/admin.chrome.printers.readonly"]
        requestClient CustomersChromePrintersGet'{..}
          = go _ccpgName _ccpgXgafv _ccpgUploadProtocol
              _ccpgAccessToken
              _ccpgUploadType
              _ccpgCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy :: Proxy CustomersChromePrintersGetResource)
                      mempty
