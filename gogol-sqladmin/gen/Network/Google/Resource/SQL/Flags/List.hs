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
-- Module      : Network.Google.Resource.SQL.Flags.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | List all available database flags for Google Cloud SQL instances.
--
-- /See:/ <https://cloud.google.com/sql/docs/reference/latest Cloud SQL Administration API Reference> for @SQLFlagsList@.
module Network.Google.Resource.SQL.Flags.List
    (
    -- * REST Resource
      FlagsListResource

    -- * Creating a Request
    , flagsList'
    , FlagsList'

    ) where

import           Network.Google.Prelude
import           Network.Google.SQLAdmin.Types

-- | A resource alias for @SQLFlagsList@ method which the
-- 'FlagsList'' request conforms to.
type FlagsListResource =
     "flags" :>
       QueryParam "alt" AltJSON :>
         Get '[JSON] FlagsListResponse

-- | List all available database flags for Google Cloud SQL instances.
--
-- /See:/ 'flagsList'' smart constructor.
data FlagsList' =
    FlagsList'
    deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'FlagsList'' with the minimum fields required to make a request.
--
flagsList'
    :: FlagsList'
flagsList' = FlagsList'

instance GoogleRequest FlagsList' where
        type Rs FlagsList' = FlagsListResponse
        requestClient FlagsList'{..}
          = go (Just AltJSON) sQLAdminService
          where go
                  = buildClient (Proxy :: Proxy FlagsListResource)
                      mempty
