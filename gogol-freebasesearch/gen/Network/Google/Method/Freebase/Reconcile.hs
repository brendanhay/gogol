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
-- Module      : Network.Google.Method.Freebase.Reconcile
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reconcile entities to Freebase open data.
--
-- /See:/ <https://developers.google.com/freebase/ Freebase Search Reference> for @freebase.reconcile@.
module Network.Google.Method.Freebase.Reconcile
    (
    -- * REST Resource
      ReconcileMethod

    -- * Creating a Request
    , reconcile
    , Reconcile

    -- * Request Lenses
    , rKind
    , rLang
    , rConfidence
    , rName
    , rLimit
    , rProp
    ) where

import           Network.Google.FreebaseSearch.Types
import           Network.Google.Prelude

-- | A resource alias for @freebase.reconcile@ method which the
-- 'Reconcile' request conforms to.
type ReconcileMethod =
     "freebase" :>
       "v1" :>
         "reconcile" :>
           QueryParams "kind" Text :>
             QueryParams "lang" Text :>
               QueryParam "confidence" (Textual Double) :>
                 QueryParam "name" Text :>
                   QueryParam "limit" (Textual Int32) :>
                     QueryParams "prop" Text :>
                       QueryParam "alt" AltJSON :> Get '[JSON] ReconcileGet

-- | Reconcile entities to Freebase open data.
--
-- /See:/ 'reconcile' smart constructor.
data Reconcile = Reconcile
    { _rKind       :: !(Maybe [Text])
    , _rLang       :: !(Maybe [Text])
    , _rConfidence :: !(Textual Double)
    , _rName       :: !(Maybe Text)
    , _rLimit      :: !(Textual Int32)
    , _rProp       :: !(Maybe [Text])
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'Reconcile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rKind'
--
-- * 'rLang'
--
-- * 'rConfidence'
--
-- * 'rName'
--
-- * 'rLimit'
--
-- * 'rProp'
reconcile
    :: Reconcile
reconcile =
    Reconcile
    { _rKind = Nothing
    , _rLang = Nothing
    , _rConfidence = 0.99
    , _rName = Nothing
    , _rLimit = 3
    , _rProp = Nothing
    }

-- | Classifications of entity e.g. type, category, title.
rKind :: Lens' Reconcile [Text]
rKind
  = lens _rKind (\ s a -> s{_rKind = a}) . _Default .
      _Coerce

-- | Languages for names and values. First language is used for display.
-- Default is \'en\'.
rLang :: Lens' Reconcile [Text]
rLang
  = lens _rLang (\ s a -> s{_rLang = a}) . _Default .
      _Coerce

-- | Required confidence for a candidate to match. Must be between .5 and 1.0
rConfidence :: Lens' Reconcile Double
rConfidence
  = lens _rConfidence (\ s a -> s{_rConfidence = a}) .
      _Coerce

-- | Name of entity.
rName :: Lens' Reconcile (Maybe Text)
rName = lens _rName (\ s a -> s{_rName = a})

-- | Maximum number of candidates to return.
rLimit :: Lens' Reconcile Int32
rLimit
  = lens _rLimit (\ s a -> s{_rLimit = a}) . _Coerce

-- | Property values for entity formatted as :
rProp :: Lens' Reconcile [Text]
rProp
  = lens _rProp (\ s a -> s{_rProp = a}) . _Default .
      _Coerce

instance GoogleRequest Reconcile where
        type Rs Reconcile = ReconcileGet
        requestClient Reconcile{..}
          = go (_rKind ^. _Default) (_rLang ^. _Default)
              (Just _rConfidence)
              _rName
              (Just _rLimit)
              (_rProp ^. _Default)
              (Just AltJSON)
              freebaseSearchService
          where go
                  = buildClient (Proxy :: Proxy ReconcileMethod) mempty
