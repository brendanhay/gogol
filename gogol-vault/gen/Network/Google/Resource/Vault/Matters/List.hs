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
-- Module      : Network.Google.Resource.Vault.Matters.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists matters the requestor has access to.
--
-- /See:/ <https://developers.google.com/vault G Suite Vault API Reference> for @vault.matters.list@.
module Network.Google.Resource.Vault.Matters.List
    (
    -- * REST Resource
      MattersListResource

    -- * Creating a Request
    , mattersList
    , MattersList

    -- * Request Lenses
    , mlXgafv
    , mlState
    , mlUploadProtocol
    , mlAccessToken
    , mlUploadType
    , mlView
    , mlPageToken
    , mlPageSize
    , mlCallback
    ) where

import Network.Google.Prelude
import Network.Google.Vault.Types

-- | A resource alias for @vault.matters.list@ method which the
-- 'MattersList' request conforms to.
type MattersListResource =
     "v1" :>
       "matters" :>
         QueryParam "$.xgafv" Xgafv :>
           QueryParam "state" MattersListState :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "view" MattersListView :>
                     QueryParam "pageToken" Text :>
                       QueryParam "pageSize" (Textual Int32) :>
                         QueryParam "callback" Text :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ListMattersResponse

-- | Lists matters the requestor has access to.
--
-- /See:/ 'mattersList' smart constructor.
data MattersList =
  MattersList'
    { _mlXgafv :: !(Maybe Xgafv)
    , _mlState :: !(Maybe MattersListState)
    , _mlUploadProtocol :: !(Maybe Text)
    , _mlAccessToken :: !(Maybe Text)
    , _mlUploadType :: !(Maybe Text)
    , _mlView :: !(Maybe MattersListView)
    , _mlPageToken :: !(Maybe Text)
    , _mlPageSize :: !(Maybe (Textual Int32))
    , _mlCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MattersList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mlXgafv'
--
-- * 'mlState'
--
-- * 'mlUploadProtocol'
--
-- * 'mlAccessToken'
--
-- * 'mlUploadType'
--
-- * 'mlView'
--
-- * 'mlPageToken'
--
-- * 'mlPageSize'
--
-- * 'mlCallback'
mattersList
    :: MattersList
mattersList =
  MattersList'
    { _mlXgafv = Nothing
    , _mlState = Nothing
    , _mlUploadProtocol = Nothing
    , _mlAccessToken = Nothing
    , _mlUploadType = Nothing
    , _mlView = Nothing
    , _mlPageToken = Nothing
    , _mlPageSize = Nothing
    , _mlCallback = Nothing
    }


-- | V1 error format.
mlXgafv :: Lens' MattersList (Maybe Xgafv)
mlXgafv = lens _mlXgafv (\ s a -> s{_mlXgafv = a})

-- | If set, lists only matters with the specified state. The default lists
-- matters of all states.
mlState :: Lens' MattersList (Maybe MattersListState)
mlState = lens _mlState (\ s a -> s{_mlState = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mlUploadProtocol :: Lens' MattersList (Maybe Text)
mlUploadProtocol
  = lens _mlUploadProtocol
      (\ s a -> s{_mlUploadProtocol = a})

-- | OAuth access token.
mlAccessToken :: Lens' MattersList (Maybe Text)
mlAccessToken
  = lens _mlAccessToken
      (\ s a -> s{_mlAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mlUploadType :: Lens' MattersList (Maybe Text)
mlUploadType
  = lens _mlUploadType (\ s a -> s{_mlUploadType = a})

-- | Specifies how much information about the matter to return in response.
mlView :: Lens' MattersList (Maybe MattersListView)
mlView = lens _mlView (\ s a -> s{_mlView = a})

-- | The pagination token as returned in the response.
mlPageToken :: Lens' MattersList (Maybe Text)
mlPageToken
  = lens _mlPageToken (\ s a -> s{_mlPageToken = a})

-- | The number of matters to return in the response. Default and maximum are
-- 100.
mlPageSize :: Lens' MattersList (Maybe Int32)
mlPageSize
  = lens _mlPageSize (\ s a -> s{_mlPageSize = a}) .
      mapping _Coerce

-- | JSONP
mlCallback :: Lens' MattersList (Maybe Text)
mlCallback
  = lens _mlCallback (\ s a -> s{_mlCallback = a})

instance GoogleRequest MattersList where
        type Rs MattersList = ListMattersResponse
        type Scopes MattersList =
             '["https://www.googleapis.com/auth/ediscovery",
               "https://www.googleapis.com/auth/ediscovery.readonly"]
        requestClient MattersList'{..}
          = go _mlXgafv _mlState _mlUploadProtocol
              _mlAccessToken
              _mlUploadType
              _mlView
              _mlPageToken
              _mlPageSize
              _mlCallback
              (Just AltJSON)
              vaultService
          where go
                  = buildClient (Proxy :: Proxy MattersListResource)
                      mempty
