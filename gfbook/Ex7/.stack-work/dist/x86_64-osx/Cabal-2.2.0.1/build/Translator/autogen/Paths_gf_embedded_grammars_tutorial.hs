{-# LANGUAGE CPP #-}
{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
module Paths_gf_embedded_grammars_tutorial (
    version,
    getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

#if defined(VERSION_base)

#if MIN_VERSION_base(4,0,0)
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#else
catchIO :: IO a -> (Exception.Exception -> IO a) -> IO a
#endif

#else
catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
#endif
catchIO = Exception.catch

version :: Version
version = Version [0,1] []
bindir, libdir, dynlibdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "/Users/nurliyana/gf-contrib/gfbook/Ex7/.stack-work/install/x86_64-osx/02581458f94c719a2bc72aa8220d18f02088898cb07930f2bbef069b7b1fe4b6/8.4.4/bin"
libdir     = "/Users/nurliyana/gf-contrib/gfbook/Ex7/.stack-work/install/x86_64-osx/02581458f94c719a2bc72aa8220d18f02088898cb07930f2bbef069b7b1fe4b6/8.4.4/lib/x86_64-osx-ghc-8.4.4/gf-embedded-grammars-tutorial-0.1-CmxmkafElBq4DF54xnanHb-Translator"
dynlibdir  = "/Users/nurliyana/gf-contrib/gfbook/Ex7/.stack-work/install/x86_64-osx/02581458f94c719a2bc72aa8220d18f02088898cb07930f2bbef069b7b1fe4b6/8.4.4/lib/x86_64-osx-ghc-8.4.4"
datadir    = "/Users/nurliyana/gf-contrib/gfbook/Ex7/.stack-work/install/x86_64-osx/02581458f94c719a2bc72aa8220d18f02088898cb07930f2bbef069b7b1fe4b6/8.4.4/share/x86_64-osx-ghc-8.4.4/gf-embedded-grammars-tutorial-0.1"
libexecdir = "/Users/nurliyana/gf-contrib/gfbook/Ex7/.stack-work/install/x86_64-osx/02581458f94c719a2bc72aa8220d18f02088898cb07930f2bbef069b7b1fe4b6/8.4.4/libexec/x86_64-osx-ghc-8.4.4/gf-embedded-grammars-tutorial-0.1"
sysconfdir = "/Users/nurliyana/gf-contrib/gfbook/Ex7/.stack-work/install/x86_64-osx/02581458f94c719a2bc72aa8220d18f02088898cb07930f2bbef069b7b1fe4b6/8.4.4/etc"

getBinDir, getLibDir, getDynLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "gf_embedded_grammars_tutorial_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "gf_embedded_grammars_tutorial_libdir") (\_ -> return libdir)
getDynLibDir = catchIO (getEnv "gf_embedded_grammars_tutorial_dynlibdir") (\_ -> return dynlibdir)
getDataDir = catchIO (getEnv "gf_embedded_grammars_tutorial_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "gf_embedded_grammars_tutorial_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "gf_embedded_grammars_tutorial_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
