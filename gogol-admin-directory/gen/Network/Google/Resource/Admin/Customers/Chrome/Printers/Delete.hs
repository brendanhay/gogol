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
-- Module      : Network.Google.Resource.Admin.Customers.Chrome.Printers.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a \`Printer\`.
--
-- /See:/ <https://developers.google.com/admin-sdk/ Admin SDK API Reference> for @admin.customers.chrome.printers.delete@.
module Network.Google.Resource.Admin.Customers.Chrome.Printers.Delete
    (
    -- * REST Resource
      CustomersChromePrintersDeleteResource

    -- * Creating a Request
    , customersChromePrintersDelete
    , CustomersChromePrintersDelete

    -- * Request Lenses
    , ccpdXgafv
    , ccpdUploadProtocol
    , ccpdAccessToken
    , ccpdUploadType
    , ccpdName
    , ccpdCallback
    ) where

import Network.Google.Directory.Types
import Network.Google.Prelude

-- | A resource alias for @admin.customers.chrome.printers.delete@ method which the
-- 'CustomersChromePrintersDelete' request conforms to.
type CustomersChromePrintersDeleteResource =
     "admin" :>
       "directory" :>
         "v1" :>
           Capture "name" Text :>
             QueryParam "$.xgafv" Xgafv :>
               QueryParam "upload_protocol" Text :>
                 QueryParam "access_token" Text :>
                   QueryParam "uploadType" Text :>
                     QueryParam "callback" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] Empty

-- | Deletes a \`Printer\`.
--
-- /See:/ 'customersChromePrintersDelete' smart constructor.
data CustomersChromePrintersDelete =
  CustomersChromePrintersDelete'
    { _ccpdXgafv :: !(Maybe Xgafv)
    , _ccpdUploadProtocol :: !(Maybe Text)
    , _ccpdAccessToken :: !(Maybe Text)
    , _ccpdUploadType :: !(Maybe Text)
    , _ccpdName :: !Text
    , _ccpdCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'CustomersChromePrintersDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccpdXgafv'
--
-- * 'ccpdUploadProtocol'
--
-- * 'ccpdAccessToken'
--
-- * 'ccpdUploadType'
--
-- * 'ccpdName'
--
-- * 'ccpdCallback'
customersChromePrintersDelete
    :: Text -- ^ 'ccpdName'
    -> CustomersChromePrintersDelete
customersChromePrintersDelete pCcpdName_ =
  CustomersChromePrintersDelete'
    { _ccpdXgafv = Nothing
    , _ccpdUploadProtocol = Nothing
    , _ccpdAccessToken = Nothing
    , _ccpdUploadType = Nothing
    , _ccpdName = pCcpdName_
    , _ccpdCallback = Nothing
    }


-- | V1 error format.
ccpdXgafv :: Lens' CustomersChromePrintersDelete (Maybe Xgafv)
ccpdXgafv
  = lens _ccpdXgafv (\ s a -> s{_ccpdXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
ccpdUploadProtocol :: Lens' CustomersChromePrintersDelete (Maybe Text)
ccpdUploadProtocol
  = lens _ccpdUploadProtocol
      (\ s a -> s{_ccpdUploadProtocol = a})

-- | OAuth access token.
ccpdAccessToken :: Lens' CustomersChromePrintersDelete (Maybe Text)
ccpdAccessToken
  = lens _ccpdAccessToken
      (\ s a -> s{_ccpdAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
ccpdUploadType :: Lens' CustomersChromePrintersDelete (Maybe Text)
ccpdUploadType
  = lens _ccpdUploadType
      (\ s a -> s{_ccpdUploadType = a})

-- | Required. The name of the printer to be updated. Format:
-- customers\/{customer_id}\/chrome\/printers\/{printer_id}
ccpdName :: Lens' CustomersChromePrintersDelete Text
ccpdName = lens _ccpdName (\ s a -> s{_ccpdName = a})

-- | JSONP
ccpdCallback :: Lens' CustomersChromePrintersDelete (Maybe Text)
ccpdCallback
  = lens _ccpdCallback (\ s a -> s{_ccpdCallback = a})

instance GoogleRequest CustomersChromePrintersDelete
         where
        type Rs CustomersChromePrintersDelete = Empty
        type Scopes CustomersChromePrintersDelete =
             '["https://www.googleapis.com/auth/admin.chrome.printers"]
        requestClient CustomersChromePrintersDelete'{..}
          = go _ccpdName _ccpdXgafv _ccpdUploadProtocol
              _ccpdAccessToken
              _ccpdUploadType
              _ccpdCallback
              (Just AltJSON)
              directoryService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy CustomersChromePrintersDeleteResource)
                      mempty
