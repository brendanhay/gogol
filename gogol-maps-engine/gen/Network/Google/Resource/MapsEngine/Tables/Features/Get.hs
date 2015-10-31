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
-- Module      : Network.Google.Resource.MapsEngine.Tables.Features.Get
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Return a single feature, given its ID.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @mapsengine.tables.features.get@.
module Network.Google.Resource.MapsEngine.Tables.Features.Get
    (
    -- * REST Resource
      TablesFeaturesGetResource

    -- * Creating a Request
    , tablesFeaturesGet
    , TablesFeaturesGet

    -- * Request Lenses
    , tfgVersion
    , tfgId
    , tfgSelect
    , tfgTableId
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @mapsengine.tables.features.get@ method which the
-- 'TablesFeaturesGet' request conforms to.
type TablesFeaturesGetResource =
     "mapsengine" :>
       "v1" :>
         "tables" :>
           Capture "tableId" Text :>
             "features" :>
               Capture "id" Text :>
                 QueryParam "version" TablesFeaturesGetVersion :>
                   QueryParam "select" Text :>
                     QueryParam "alt" AltJSON :> Get '[JSON] Feature

-- | Return a single feature, given its ID.
--
-- /See:/ 'tablesFeaturesGet' smart constructor.
data TablesFeaturesGet = TablesFeaturesGet
    { _tfgVersion :: !(Maybe TablesFeaturesGetVersion)
    , _tfgId      :: !Text
    , _tfgSelect  :: !(Maybe Text)
    , _tfgTableId :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TablesFeaturesGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tfgVersion'
--
-- * 'tfgId'
--
-- * 'tfgSelect'
--
-- * 'tfgTableId'
tablesFeaturesGet
    :: Text -- ^ 'tfgId'
    -> Text -- ^ 'tfgTableId'
    -> TablesFeaturesGet
tablesFeaturesGet pTfgId_ pTfgTableId_ =
    TablesFeaturesGet
    { _tfgVersion = Nothing
    , _tfgId = pTfgId_
    , _tfgSelect = Nothing
    , _tfgTableId = pTfgTableId_
    }

-- | The table version to access. See Accessing Public Data for information.
tfgVersion :: Lens' TablesFeaturesGet (Maybe TablesFeaturesGetVersion)
tfgVersion
  = lens _tfgVersion (\ s a -> s{_tfgVersion = a})

-- | The ID of the feature to get.
tfgId :: Lens' TablesFeaturesGet Text
tfgId = lens _tfgId (\ s a -> s{_tfgId = a})

-- | A SQL-like projection clause used to specify returned properties. If
-- this parameter is not included, all properties are returned.
tfgSelect :: Lens' TablesFeaturesGet (Maybe Text)
tfgSelect
  = lens _tfgSelect (\ s a -> s{_tfgSelect = a})

-- | The ID of the table.
tfgTableId :: Lens' TablesFeaturesGet Text
tfgTableId
  = lens _tfgTableId (\ s a -> s{_tfgTableId = a})

instance GoogleRequest TablesFeaturesGet where
        type Rs TablesFeaturesGet = Feature
        type Scopes TablesFeaturesGet =
             '["https://www.googleapis.com/auth/mapsengine",
               "https://www.googleapis.com/auth/mapsengine.readonly"]
        requestClient TablesFeaturesGet{..}
          = go _tfgTableId _tfgId _tfgVersion _tfgSelect
              (Just AltJSON)
              mapsEngineService
          where go
                  = buildClient
                      (Proxy :: Proxy TablesFeaturesGetResource)
                      mempty
