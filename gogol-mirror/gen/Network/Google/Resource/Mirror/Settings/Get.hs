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
-- Module      : Network.Google.Resource.Mirror.Settings.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a single setting by ID.
--
-- /See:/ <https://developers.google.com/glass Google Mirror API Reference> for @mirror.settings.get@.
module Network.Google.Resource.Mirror.Settings.Get
    (
    -- * REST Resource
      SettingsGetResource

    -- * Creating a Request
    , settingsGet
    , SettingsGet

    -- * Request Lenses
    , sgId
    ) where

import           Network.Google.Mirror.Types
import           Network.Google.Prelude

-- | A resource alias for @mirror.settings.get@ method which the
-- 'SettingsGet' request conforms to.
type SettingsGetResource =
     "mirror" :>
       "v1" :>
         "settings" :>
           Capture "id" Text :>
             QueryParam "alt" AltJSON :> Get '[JSON] Setting

-- | Gets a single setting by ID.
--
-- /See:/ 'settingsGet' smart constructor.
newtype SettingsGet = SettingsGet
    { _sgId :: Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'SettingsGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgId'
settingsGet
    :: Text -- ^ 'sgId'
    -> SettingsGet
settingsGet pSgId_ =
    SettingsGet
    { _sgId = pSgId_
    }

-- | The ID of the setting. The following IDs are valid: - locale - The key
-- to the user’s language\/locale (BCP 47 identifier) that Glassware should
-- use to render localized content. - timezone - The key to the user’s
-- current time zone region as defined in the tz database. Example:
-- America\/Los_Angeles.
sgId :: Lens' SettingsGet Text
sgId = lens _sgId (\ s a -> s{_sgId = a})

instance GoogleRequest SettingsGet where
        type Rs SettingsGet = Setting
        requestClient SettingsGet{..}
          = go _sgId (Just AltJSON) mirrorService
          where go
                  = buildClient (Proxy :: Proxy SettingsGetResource)
                      mempty
