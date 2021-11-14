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
-- Module      : Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.List
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all ad units under a specified account and ad client.
--
-- /See:/ <http://code.google.com/apis/adsense/management/ AdSense Management API Reference> for @adsense.accounts.adclients.adunits.list@.
module Network.Google.Resource.AdSense.Accounts.AdClients.AdUnits.List
    (
    -- * REST Resource
      AccountsAdClientsAdUnitsListResource

    -- * Creating a Request
    , accountsAdClientsAdUnitsList
    , AccountsAdClientsAdUnitsList

    -- * Request Lenses
    , aacaulParent
    , aacaulXgafv
    , aacaulUploadProtocol
    , aacaulAccessToken
    , aacaulUploadType
    , aacaulPageToken
    , aacaulPageSize
    , aacaulCallback
    ) where

import Network.Google.AdSense.Types
import Network.Google.Prelude

-- | A resource alias for @adsense.accounts.adclients.adunits.list@ method which the
-- 'AccountsAdClientsAdUnitsList' request conforms to.
type AccountsAdClientsAdUnitsListResource =
     "v2" :>
       Capture "parent" Text :>
         "adunits" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "pageToken" Text :>
                     QueryParam "pageSize" (Textual Int32) :>
                       QueryParam "callback" Text :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ListAdUnitsResponse

-- | Lists all ad units under a specified account and ad client.
--
-- /See:/ 'accountsAdClientsAdUnitsList' smart constructor.
data AccountsAdClientsAdUnitsList =
  AccountsAdClientsAdUnitsList'
    { _aacaulParent :: !Text
    , _aacaulXgafv :: !(Maybe Xgafv)
    , _aacaulUploadProtocol :: !(Maybe Text)
    , _aacaulAccessToken :: !(Maybe Text)
    , _aacaulUploadType :: !(Maybe Text)
    , _aacaulPageToken :: !(Maybe Text)
    , _aacaulPageSize :: !(Maybe (Textual Int32))
    , _aacaulCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'AccountsAdClientsAdUnitsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aacaulParent'
--
-- * 'aacaulXgafv'
--
-- * 'aacaulUploadProtocol'
--
-- * 'aacaulAccessToken'
--
-- * 'aacaulUploadType'
--
-- * 'aacaulPageToken'
--
-- * 'aacaulPageSize'
--
-- * 'aacaulCallback'
accountsAdClientsAdUnitsList
    :: Text -- ^ 'aacaulParent'
    -> AccountsAdClientsAdUnitsList
accountsAdClientsAdUnitsList pAacaulParent_ =
  AccountsAdClientsAdUnitsList'
    { _aacaulParent = pAacaulParent_
    , _aacaulXgafv = Nothing
    , _aacaulUploadProtocol = Nothing
    , _aacaulAccessToken = Nothing
    , _aacaulUploadType = Nothing
    , _aacaulPageToken = Nothing
    , _aacaulPageSize = Nothing
    , _aacaulCallback = Nothing
    }


-- | Required. The ad client which owns the collection of ad units. Format:
-- accounts\/{account}\/adclients\/{adclient}
aacaulParent :: Lens' AccountsAdClientsAdUnitsList Text
aacaulParent
  = lens _aacaulParent (\ s a -> s{_aacaulParent = a})

-- | V1 error format.
aacaulXgafv :: Lens' AccountsAdClientsAdUnitsList (Maybe Xgafv)
aacaulXgafv
  = lens _aacaulXgafv (\ s a -> s{_aacaulXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
aacaulUploadProtocol :: Lens' AccountsAdClientsAdUnitsList (Maybe Text)
aacaulUploadProtocol
  = lens _aacaulUploadProtocol
      (\ s a -> s{_aacaulUploadProtocol = a})

-- | OAuth access token.
aacaulAccessToken :: Lens' AccountsAdClientsAdUnitsList (Maybe Text)
aacaulAccessToken
  = lens _aacaulAccessToken
      (\ s a -> s{_aacaulAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
aacaulUploadType :: Lens' AccountsAdClientsAdUnitsList (Maybe Text)
aacaulUploadType
  = lens _aacaulUploadType
      (\ s a -> s{_aacaulUploadType = a})

-- | A page token, received from a previous \`ListAdUnits\` call. Provide
-- this to retrieve the subsequent page. When paginating, all other
-- parameters provided to \`ListAdUnits\` must match the call that provided
-- the page token.
aacaulPageToken :: Lens' AccountsAdClientsAdUnitsList (Maybe Text)
aacaulPageToken
  = lens _aacaulPageToken
      (\ s a -> s{_aacaulPageToken = a})

-- | The maximum number of ad units to include in the response, used for
-- paging. If unspecified, at most 10000 ad units will be returned. The
-- maximum value is 10000; values above 10000 will be coerced to 10000.
aacaulPageSize :: Lens' AccountsAdClientsAdUnitsList (Maybe Int32)
aacaulPageSize
  = lens _aacaulPageSize
      (\ s a -> s{_aacaulPageSize = a})
      . mapping _Coerce

-- | JSONP
aacaulCallback :: Lens' AccountsAdClientsAdUnitsList (Maybe Text)
aacaulCallback
  = lens _aacaulCallback
      (\ s a -> s{_aacaulCallback = a})

instance GoogleRequest AccountsAdClientsAdUnitsList
         where
        type Rs AccountsAdClientsAdUnitsList =
             ListAdUnitsResponse
        type Scopes AccountsAdClientsAdUnitsList =
             '["https://www.googleapis.com/auth/adsense",
               "https://www.googleapis.com/auth/adsense.readonly"]
        requestClient AccountsAdClientsAdUnitsList'{..}
          = go _aacaulParent _aacaulXgafv _aacaulUploadProtocol
              _aacaulAccessToken
              _aacaulUploadType
              _aacaulPageToken
              _aacaulPageSize
              _aacaulCallback
              (Just AltJSON)
              adSenseService
          where go
                  = buildClient
                      (Proxy :: Proxy AccountsAdClientsAdUnitsListResource)
                      mempty
