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
-- Module      : Network.Google.Resource.Content.LiaSettings.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the LIA settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ <https://developers.google.com/shopping-content Content API for Shopping Reference> for @content.liasettings.list@.
module Network.Google.Resource.Content.LiaSettings.List
    (
    -- * REST Resource
      LiaSettingsListResource

    -- * Creating a Request
    , liaSettingsList
    , LiaSettingsList

    -- * Request Lenses
    , lslMerchantId
    , lslPageToken
    , lslMaxResults
    ) where

import           Network.Google.Prelude
import           Network.Google.ShoppingContent.Types

-- | A resource alias for @content.liasettings.list@ method which the
-- 'LiaSettingsList' request conforms to.
type LiaSettingsListResource =
     "content" :>
       "v2.1" :>
         Capture "merchantId" (Textual Word64) :>
           "liasettings" :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" (Textual Word32) :>
                 QueryParam "alt" AltJSON :>
                   Get '[JSON] LiaSettingsListResponse

-- | Lists the LIA settings of the sub-accounts in your Merchant Center
-- account.
--
-- /See:/ 'liaSettingsList' smart constructor.
data LiaSettingsList = LiaSettingsList'
    { _lslMerchantId :: !(Textual Word64)
    , _lslPageToken  :: !(Maybe Text)
    , _lslMaxResults :: !(Maybe (Textual Word32))
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'LiaSettingsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lslMerchantId'
--
-- * 'lslPageToken'
--
-- * 'lslMaxResults'
liaSettingsList
    :: Word64 -- ^ 'lslMerchantId'
    -> LiaSettingsList
liaSettingsList pLslMerchantId_ =
    LiaSettingsList'
    { _lslMerchantId = _Coerce # pLslMerchantId_
    , _lslPageToken = Nothing
    , _lslMaxResults = Nothing
    }

-- | The ID of the managing account. This must be a multi-client account.
lslMerchantId :: Lens' LiaSettingsList Word64
lslMerchantId
  = lens _lslMerchantId
      (\ s a -> s{_lslMerchantId = a})
      . _Coerce

-- | The token returned by the previous request.
lslPageToken :: Lens' LiaSettingsList (Maybe Text)
lslPageToken
  = lens _lslPageToken (\ s a -> s{_lslPageToken = a})

-- | The maximum number of LIA settings to return in the response, used for
-- paging.
lslMaxResults :: Lens' LiaSettingsList (Maybe Word32)
lslMaxResults
  = lens _lslMaxResults
      (\ s a -> s{_lslMaxResults = a})
      . mapping _Coerce

instance GoogleRequest LiaSettingsList where
        type Rs LiaSettingsList = LiaSettingsListResponse
        type Scopes LiaSettingsList =
             '["https://www.googleapis.com/auth/content"]
        requestClient LiaSettingsList'{..}
          = go _lslMerchantId _lslPageToken _lslMaxResults
              (Just AltJSON)
              shoppingContentService
          where go
                  = buildClient
                      (Proxy :: Proxy LiaSettingsListResource)
                      mempty
