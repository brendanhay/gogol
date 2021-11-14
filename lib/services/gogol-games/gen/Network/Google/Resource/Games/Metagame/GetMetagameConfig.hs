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
-- Module      : Network.Google.Resource.Games.Metagame.GetMetagameConfig
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return the metagame configuration data for the calling application.
--
-- /See:/ <https://developers.google.com/games/ Google Play Game Services Reference> for @games.metagame.getMetagameConfig@.
module Network.Google.Resource.Games.Metagame.GetMetagameConfig
    (
    -- * REST Resource
      MetagameGetMetagameConfigResource

    -- * Creating a Request
    , metagameGetMetagameConfig
    , MetagameGetMetagameConfig

    -- * Request Lenses
    , mgmcXgafv
    , mgmcUploadProtocol
    , mgmcAccessToken
    , mgmcUploadType
    , mgmcCallback
    ) where

import Network.Google.Games.Types
import Network.Google.Prelude

-- | A resource alias for @games.metagame.getMetagameConfig@ method which the
-- 'MetagameGetMetagameConfig' request conforms to.
type MetagameGetMetagameConfigResource =
     "games" :>
       "v1" :>
         "metagameConfig" :>
           QueryParam "$.xgafv" Xgafv :>
             QueryParam "upload_protocol" Text :>
               QueryParam "access_token" Text :>
                 QueryParam "uploadType" Text :>
                   QueryParam "callback" Text :>
                     QueryParam "alt" AltJSON :>
                       Get '[JSON] MetagameConfig

-- | Return the metagame configuration data for the calling application.
--
-- /See:/ 'metagameGetMetagameConfig' smart constructor.
data MetagameGetMetagameConfig =
  MetagameGetMetagameConfig'
    { _mgmcXgafv :: !(Maybe Xgafv)
    , _mgmcUploadProtocol :: !(Maybe Text)
    , _mgmcAccessToken :: !(Maybe Text)
    , _mgmcUploadType :: !(Maybe Text)
    , _mgmcCallback :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'MetagameGetMetagameConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mgmcXgafv'
--
-- * 'mgmcUploadProtocol'
--
-- * 'mgmcAccessToken'
--
-- * 'mgmcUploadType'
--
-- * 'mgmcCallback'
metagameGetMetagameConfig
    :: MetagameGetMetagameConfig
metagameGetMetagameConfig =
  MetagameGetMetagameConfig'
    { _mgmcXgafv = Nothing
    , _mgmcUploadProtocol = Nothing
    , _mgmcAccessToken = Nothing
    , _mgmcUploadType = Nothing
    , _mgmcCallback = Nothing
    }


-- | V1 error format.
mgmcXgafv :: Lens' MetagameGetMetagameConfig (Maybe Xgafv)
mgmcXgafv
  = lens _mgmcXgafv (\ s a -> s{_mgmcXgafv = a})

-- | Upload protocol for media (e.g. \"raw\", \"multipart\").
mgmcUploadProtocol :: Lens' MetagameGetMetagameConfig (Maybe Text)
mgmcUploadProtocol
  = lens _mgmcUploadProtocol
      (\ s a -> s{_mgmcUploadProtocol = a})

-- | OAuth access token.
mgmcAccessToken :: Lens' MetagameGetMetagameConfig (Maybe Text)
mgmcAccessToken
  = lens _mgmcAccessToken
      (\ s a -> s{_mgmcAccessToken = a})

-- | Legacy upload protocol for media (e.g. \"media\", \"multipart\").
mgmcUploadType :: Lens' MetagameGetMetagameConfig (Maybe Text)
mgmcUploadType
  = lens _mgmcUploadType
      (\ s a -> s{_mgmcUploadType = a})

-- | JSONP
mgmcCallback :: Lens' MetagameGetMetagameConfig (Maybe Text)
mgmcCallback
  = lens _mgmcCallback (\ s a -> s{_mgmcCallback = a})

instance GoogleRequest MetagameGetMetagameConfig
         where
        type Rs MetagameGetMetagameConfig = MetagameConfig
        type Scopes MetagameGetMetagameConfig =
             '["https://www.googleapis.com/auth/games"]
        requestClient MetagameGetMetagameConfig'{..}
          = go _mgmcXgafv _mgmcUploadProtocol _mgmcAccessToken
              _mgmcUploadType
              _mgmcCallback
              (Just AltJSON)
              gamesService
          where go
                  = buildClient
                      (Proxy :: Proxy MetagameGetMetagameConfigResource)
                      mempty
